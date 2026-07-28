extends Node


@export var distance := 5.0


func get_target(camera):

	var space = camera.get_world_3d().direct_space_state


	var start = camera.global_position

	var end = start + (-camera.global_transform.basis.z * distance)


	var query = PhysicsRayQueryParameters3D.create(
		start,
		end
	)


	return space.intersect_ray(query)
