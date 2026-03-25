@tool

extends EditorPlugin

var create_actor_plugin_script = preload("res://addons/create_actor/create_actor.gd")
var create_actor_plugin : EditorContextMenuPlugin

var randomizer_plugin_script = preload("res://addons/create_actor/create_randomizer.gd")
var randomizer_plugin : EditorContextMenuPlugin

var retarget_animation_packed = preload("res://addons/create_actor/retarget_animation_gui.tscn")
var retarget_animation_dock : Control

func get_base_editor() -> CodeEdit:
	return EditorInterface.get_script_editor().get_current_editor().get_base_editor()
	
func _enter_tree() -> void:
	create_actor_plugin = create_actor_plugin_script.new()
	add_context_menu_plugin(EditorContextMenuPlugin.ContextMenuSlot.CONTEXT_SLOT_FILESYSTEM_CREATE, create_actor_plugin)
	
	randomizer_plugin = randomizer_plugin_script.new()
	add_context_menu_plugin(EditorContextMenuPlugin.ContextMenuSlot.CONTEXT_SLOT_FILESYSTEM, randomizer_plugin)

	retarget_animation_dock = retarget_animation_packed.instantiate()
	retarget_animation_dock.configure(self)
	add_control_to_dock(DOCK_SLOT_RIGHT_UL, retarget_animation_dock)

func _exit_tree() -> void:
	remove_context_menu_plugin(create_actor_plugin)
	remove_context_menu_plugin(randomizer_plugin)
	
	remove_control_from_docks(retarget_animation_dock)
	retarget_animation_dock.free()
	
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_CTRL) and Input.is_key_pressed(KEY_T):
		create_actor_plugin.select_type([])
