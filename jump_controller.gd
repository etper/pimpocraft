extends Node

@export var jump_force := 8.0

func jump(player):
	if Input.is_action_just_pressed("jump") and player.is_on_floor():
		player.velocity.y = jump_force
