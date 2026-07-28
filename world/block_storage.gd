extends Node
class_name BlockStorage


var blocks = {}


func set_block(position:Vector3i,id:int):

	blocks[position] = id



func get_block(position:Vector3i):

	if blocks.has(position):
		return blocks[position]

	return 0



func remove_block(position:Vector3i):

	blocks.erase(position)
