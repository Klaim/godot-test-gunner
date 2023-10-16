extends Node2D

class_name Bullet

@export var speed := 500.0

@onready var _graphics : Sprite2D = $Icon

func _process(delta):
	_graphics.rotate(cos(delta))

	move_local_x(speed * delta)

