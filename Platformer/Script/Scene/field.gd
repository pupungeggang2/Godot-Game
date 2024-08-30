extends Node

func _ready():
    pass

func _process(delta):
    handle_input()
    
func handle_input():
    if Input.is_action_just_pressed('key_down'):
        print(1)
