extends Node2D

class_name Player

@onready var gun_arm : Node2D = $gun_arm
@export var speed := 100.0

func _process(delta):
	_update_movement(delta)
	_update_gun(delta)

func _update_movement(delta):
	var direction := Input.get_vector("player_move_left","player_move_right","player_move_up","player_move_down")
	position += direction.normalized() * speed * delta

func _update_gun(_delta):
	gun_arm.look_at(get_viewport().get_mouse_position())

	if gun_arm.global_rotation_degrees < 90.0 and gun_arm.global_rotation_degrees > -90.0 :
		gun_arm.set_scale(Vector2(1.0, 1.0))
	else:
		gun_arm.set_scale(Vector2(1.0, -1.0))
