#TODO: ADD ICONS SAYING ESC FOR BACK, ENTER FOR SELECT
#TODO: ADD pause_on_alt_tab
#TODO: VolumeSliders makes sound when changed indicating the sound change
#FIXME: resoultion items not being applied properly, check if lazy mode works
#const BUS_MASTER = "Master"
#const BUS_MUSIC = "Music"
#const BUS_SFX = "SFX"

# Purpose: This script only manages the UI scene.
# It dynamically builds the UI from setting templates based on the data
# in SettingsData, and connects their signals.

class_name SettingsUI extends Control

# References to the templates used to build the UI
const BOOL_CONTAINER = preload("res://addons/basic_settings_menu/templates/boolean_container.tscn")
const OPTION_CONTAINER = preload("res://addons/basic_settings_menu/templates/option_container.tscn")
const SLIDER_CONTAINER = preload("res://addons/basic_settings_menu/templates/slider_setting_container.tscn")
const INT_CONTAINER = preload("res://addons/basic_settings_menu/templates/int_container.tscn")

# References to the UI tabs where settings will be added
@onready var video_tab: VBoxContainer = %Video
@onready var audio_tab: VBoxContainer = %Audio
@onready var gameplay_tab: VBoxContainer = %Gameplay
@onready var accessibility_tab: VBoxContainer = %Accessibility


func _ready() -> void:
	# Dynamically populate each tab
	_populate_video_tab()
	_populate_audio_tab()
	_populate_gameplay_tab()
	_populate_accessibility_tab()
	
	# Adding a new setting in GameSettingsSave.gd,
	# will make it appear here automatically if a rule is added to the functions below.


func _populate_video_tab() -> void:
	_create_setting_control(video_tab, "video", "fullscreen", BOOL_CONTAINER)
	_create_setting_control(video_tab, "video", "borderless", BOOL_CONTAINER)
	
	var res_options = {}
	for res in GameSettingsSave.RESOLUTIONS_ARRAY:
		res_options[res] = "%d x %d" % [res.x, res.y]
	_create_setting_control(video_tab, "video", "resolution", OPTION_CONTAINER, res_options)


func _populate_audio_tab() -> void:
	_create_setting_control(audio_tab, "audio", "Master", SLIDER_CONTAINER)
	_create_setting_control(audio_tab, "audio", "Music", SLIDER_CONTAINER)
	_create_setting_control(audio_tab, "audio", "Sfx", SLIDER_CONTAINER)


func _populate_gameplay_tab() -> void:
	_create_setting_control(gameplay_tab, "gameplay", "max_fps", INT_CONTAINER)
	_create_setting_control(gameplay_tab, "gameplay", "show_damage_numbers", BOOL_CONTAINER)


func _populate_accessibility_tab() -> void:
	_create_setting_control(accessibility_tab, "accessibility", "current_locale", OPTION_CONTAINER, GameSettingsSave.LOCALES)


func _create_setting_control(parent: Container, category: String, setting_name: String, template: PackedScene, options: Dictionary = {}) -> void:
	var container : SettingsContainer = template.instantiate()
	container.initialize.call_deferred(category, setting_name, options)
	parent.add_child(container)


func _on_save_button_pressed() -> void:
	SettingsData.save_settings()
	# The 'settings_changed' signal in SettingsData will trigger SettingsApplier.


func _on_back_button_pressed() -> void:
	# This should transition back to your main menu or previous scene
	# For now, it just hides the settings screen.
	queue_free()
