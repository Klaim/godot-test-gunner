extends Node2D

class_name Gun

@onready var bullet_template := preload("res://bullet.tscn")
@onready var fire_hole : Node2D = $fire_hole

func _process(delta):

	if Input.is_action_just_pressed("player_fire"):
		fire()


func fire():
	var bullet := bullet_template.instantiate() as Bullet
	get_tree().root.add_child(bullet)
	bullet.global_transform = fire_hole.global_transform


