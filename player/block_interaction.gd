extends Node


@onready var camera = $"../CameraPivot/Camera3D"
@onready var world = $"../../World/BlockWorld"

@onready var raycast = $BlockRaycast



func _process(delta):

	if Input.is_action_just_pressed("mouse_left"):

		var hit = raycast.get_target(camera)

		if hit:

			var pos = Vector3i(
				hit.position
			)

			world.remove_block(pos)



	if Input.is_action_just_pressed("mouse_right"):

		var hit = raycast.get_target(camera)

		if hit:

			var pos = Vector3i(
				hit.position + hit.normal
			)

			world.place_block(pos,1)
