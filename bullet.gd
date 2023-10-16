extends Node2D

class_name Bullet

@export var speed := 100.0

@onready var _graphics : Sprite2D = $Icon

func _process(delta):
	_graphics.rotate(sin(delta))

	move_local_x(speed * delta)

