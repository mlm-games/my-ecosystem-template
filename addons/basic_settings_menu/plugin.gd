@tool
extends EditorPlugin

var pluginPath: String = get_script().resource_path.get_base_dir()

func _enter_tree():
	#NOTE: Order matters if one depends on the other on the first frame.
	add_autoload_singleton("SettingsData", pluginPath + "/settings_data.gd")
	add_autoload_singleton("SettingsApplier", pluginPath + "/settings_applier.gd")


func _exit_tree():
	remove_autoload_singleton("SettingsData")
	remove_autoload_singleton("SettingsApplier")
