# Purpose: Its only job is to display a setting's value and report back when it changes.
# It is configured by the main settings.gd script.

@tool
class_name SettingsContainer extends HBoxContainer

@onready var modifiable_part: Control = $ModifiablePartOfSetting
@onready var label: Label = $Label

var _category: String
var _setting_name: String


# Called by settings.gd to configure this container
func initialize(category: String, setting_name: String, options: Dictionary = {}) -> void:
	_category = category
	_setting_name = setting_name
	
	# Use a user-friendly name for the label
	label.text = setting_name.capitalize().replace("_", " ")
	
	var current_value = SettingsData.get_setting(_category, _setting_name)

	# Configure the control based on its type
	if modifiable_part is CheckButton:
		modifiable_part.button_pressed = current_value
		modifiable_part.toggled.connect(_on_value_changed)
		
	elif modifiable_part is HSlider:
		modifiable_part.value = current_value * 100 # Convert linear (0-1) to percentage (0-100)
		modifiable_part.value_changed.connect(func(val): _on_value_changed(val / 100.0))
		
	elif modifiable_part is SpinBox:
		modifiable_part.value = current_value
		modifiable_part.value_changed.connect(_on_value_changed)
		
	elif modifiable_part is OptionButton:
		var index_to_select = 0
		var i = 0
		for key in options:
			var text = options[key]
			modifiable_part.add_item(text)
			modifiable_part.set_item_metadata(i, key)
			if key == current_value:
				index_to_select = i
			i += 1
		modifiable_part.select(index_to_select)
		modifiable_part.item_selected.connect(func(idx): _on_value_changed(modifiable_part.get_item_metadata(idx)))


func _on_value_changed(new_value) -> void:
	# Tell the central data store that this setting has changed
	SettingsData.set_setting(_category, _setting_name, new_value)
