extends CharacterBody2D

@export var speed : float = 250.0

func _physics_process(delta):
	# Movement WASD
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed
	move_and_slide()
	
	# Vise souris (top-down shooter)
	look_at(get_global_mouse_position())
