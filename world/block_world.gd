extends Node3D
class_name BlockWorld


@onready var storage = $BlockStorage
@onready var mesh_builder = $BlockMeshBuilder


func place_block(position,id):

	storage.set_block(position,id)

	mesh_builder.update_mesh(storage.blocks)



func remove_block(position):

	storage.remove_block(position)

	mesh_builder.update_mesh(storage.blocks)
