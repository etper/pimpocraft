extends Node

@export var gravity := 20.0

func apply(player, delta):
	if not player.is_on_floor():
		player.velocity.y -= gravity * delta
