extends Node3D
class_name BlockMeshBuilder


var mesh_instance


func _ready():

	mesh_instance = MeshInstance3D.new()
	add_child(mesh_instance)



func update_mesh(blocks):

	var mesh = ArrayMesh.new()

	var vertices = PackedVector3Array()


	for pos in blocks:

		var p = Vector3(pos)

		vertices.append(p)
		vertices.append(p + Vector3(1,0,0))
		vertices.append(p + Vector3(0,1,0))


	var arrays = []

	arrays.resize(Mesh.ARRAY_MAX)

	arrays[Mesh.ARRAY_VERTEX] = vertices


	mesh.add_surface_from_arrays(
		Mesh.PRIMITIVE_TRIANGLES,
		arrays
	)


	mesh_instance.mesh = mesh
