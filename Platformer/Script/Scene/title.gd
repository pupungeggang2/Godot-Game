extends Node

func _ready():
    pass

func _process(delta):
    handle_input()
    
func handle_input():
    if Input.is_action_just_released('mouse_left'):
        var mouse = get_viewport().get_mouse_position()
        var x = mouse[0]
        var y = mouse[1]
        
        if Fphysics.point_inside_rect_array(x, y, UI.title['button_start']):
            var temp_scene = load("res://Scene/field.tscn").instantiate()
            queue_free()
            get_tree().root.add_child(temp_scene)
            
    if Input.is_action_just_pressed('key_enter'):
        var temp_scene = load("res://Scene/field.tscn").instantiate()
        queue_free()
        get_tree().root.add_child(temp_scene)
