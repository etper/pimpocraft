extends Node

@export var sensitivity := 0.002

var rotation_x := 0.0

func look(player, camera, event):

	if event is InputEventMouseMotion:

		player.rotation.y -= event.relative.x * sensitivity

		rotation_x -= event.relative.y * sensitivity
		rotation_x = clamp(rotation_x,-1.5,1.5)

		camera.rotation.x = rotation_x
