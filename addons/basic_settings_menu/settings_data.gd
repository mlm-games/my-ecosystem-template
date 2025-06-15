# Purpose: This autoload is the SINGLE SOURCE OF TRUTH for settings data.
# Its job is to load, save, provide access to, and merge settings with defaults.
# It does NOT apply settings.

extends Node

# This signal is emitted whenever settings are loaded or changed,
# telling other systems (like SettingsApplier) to update.
signal settings_changed

# Holds the current, active settings for the game session.
var settings_resource: GameSettingsSave

const SETTINGS_SAVE_PATH: String = "user://settings.tres" # Use JSON for easy-readability

func _ready() -> void:
	load_settings()


# Public API

func get_setting(category: String, setting: String, default = null):
	var cat_dict: Dictionary = settings_resource.get(category)
	if cat_dict.has(setting):
		return cat_dict.get(setting)

	var default_res = GameSettingsSave.new()
	if default_res.has(category):
		return default_res.get(category).get(setting, default)
	

func set_setting(category: String, setting: String, value) -> void:
	var cat_dict: Dictionary = settings_resource.get(category)
	cat_dict[setting] = value
	# Don't save immediately. Personal preference / The user might change more things and would not want to save them.
	# The "Save" button in the UI will call save_settings().


# Load/Save Logic

func load_settings() -> void:
	if FileAccess.file_exists(SETTINGS_SAVE_PATH):
		# ResourceLoader handles all type conversions (like Vector2i) automatically.
		var loaded_res = ResourceLoader.load(SETTINGS_SAVE_PATH, "", ResourceLoader.CACHE_MODE_IGNORE)
		if loaded_res is GameSettingsSave:
			settings_resource = loaded_res
		else:
			push_warning("Settings file is corrupt or of wrong type. Creating new one.")
			# Fallback if file is broken
			settings_resource = GameSettingsSave.new()
			save_settings()
	else:
		# Create a new settings resource if one doesn't exist.
		settings_resource = GameSettingsSave.new()
		save_settings()
	
	settings_changed.emit()
	print("Settings loaded from .tres file.")

func save_settings() -> void:
	if not settings_resource:
		push_error("Cannot save, no settings resource loaded.")
		return
	
	# ResourceSaver handles serialization of all Godot types correctly.
	var error = ResourceSaver.save(settings_resource, SETTINGS_SAVE_PATH)
	if error == OK:
		print("Settings saved to: " + SETTINGS_SAVE_PATH)
		settings_changed.emit() # Signal that settings were saved and should be applied.
	else:
		push_error("Failed to save settings. Error code: " + str(error))


# Utility

# Recursively merges the user dictionary on top of the defaults.
# This ensures new settings from game updates are added to the user's config.
func deep_merge(defaults: Dictionary, user: Dictionary) -> Dictionary:
	var merged = defaults.duplicate(true)
	for category in user:
		if merged.has(category) and merged[category] is Dictionary:
			for key in user[category]:
				merged[category][key] = user[category][key]
		else:
			merged[category] = user[category]
	return merged
