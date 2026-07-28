extends Node
class_name BlockRegistry


var blocks = {}


func _ready():

	var grass = BlockData.new()
	grass.id = 1
	grass.block_name = "Grass"
	grass.color = Color.GREEN

	blocks[1] = grass



func get_block(id):

	return blocks[id]
