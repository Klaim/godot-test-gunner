extends Node2D

class_name Player

@onready var gun_arm : Node2D = $gun_arm

func _process(delta):
	$gun_arm.look_at(get_viewport().get_mouse_position())
