extends Node

@export var speed := 5.0

func get_direction(player):
	var input = Input.get_vector(
		"move_left",
		"move_right",
		"move_forward",
		"move_backward"
	)

	var direction = Vector3(
		input.x,
		0,
		input.y
	)

	return player.transform.basis * direction.normalized()
