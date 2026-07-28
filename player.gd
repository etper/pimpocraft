extends CharacterBody3D

@onready var movement = $MovementController
@onready var gravity = $GravityController
@onready var jump = $JumpController

@onready var look = $LookController
@onready var camera = $CameraPivot/Camera3D

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _unhandled_input(event):
	look.look(self,camera, event)

func _physics_process(delta):

	var direction = movement.get_direction(self)

	velocity.x = direction.x * movement.speed
	velocity.z = direction.z * movement.speed

	gravity.apply(self, delta)
	jump.jump(self)

	move_and_slide()
