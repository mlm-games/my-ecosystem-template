# Purpose: This autoload is SOLELY responsible for APPLYING settings.
# It reads data from the SettingsData autoload and interacts with engine APIs
# like DisplayServer and AudioServer. It keeps application logic out of the UI and data layers.
extends Node

func _ready() -> void:
	SettingsData.settings_changed.connect(apply_all_settings)
	
	# Apply settings once on game startup.
	apply_all_settings()


func apply_all_settings() -> void:
	apply_video_settings()
	apply_audio_settings()
	apply_gameplay_settings()
	apply_accessibility_settings()
	print("All settings applied.")


func apply_video_settings() -> void:
	var video_settings = SettingsData.settings_resource.video
	if video_settings.is_empty(): return
	
	var fullscreen = video_settings.get("fullscreen", false)
	var borderless = video_settings.get("borderless", false)
	var resolution = video_settings.get("resolution", Vector2i(1280, 720))

	if fullscreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		DisplayServer.window_set_size(resolution)
		# Center the window
		var screen_size = DisplayServer.screen_get_size()
		DisplayServer.window_set_position(screen_size * 0.5 - resolution * 0.5)

	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, borderless)


func apply_audio_settings() -> void:
	var audio_settings = SettingsData.settings_resource.audio
	if audio_settings.is_empty(): return
	
	for bus_name in audio_settings:
		var bus_index = AudioServer.get_bus_index(bus_name)
		if bus_index != -1:
			var volume_linear = audio_settings[bus_name]
			AudioServer.set_bus_volume_db(bus_index, linear_to_db(volume_linear))


func apply_gameplay_settings() -> void:
	var gameplay_settings = SettingsData.settings_resource.gameplay
	if gameplay_settings.is_empty(): return
	
	Engine.max_fps = gameplay_settings.get("max_fps", 60)
	# You would connect other gameplay settings here, e.g., using signals
	# or by having other systems read directly from SettingsData.


func apply_accessibility_settings() -> void:
	var accessibility_settings = SettingsData.settings_resource.accessibility
	if accessibility_settings.is_empty(): return

	var locale_code = accessibility_settings.get("current_locale", "en")
	TranslationServer.set_locale(locale_code)
