class_name Move_State
extends State

@export var enemy: CharacterBody2D
@export var speed = 10
var Player: CharacterBody2D
var Movetime: float
var dirTime: float
var Movedir

func Enter():
	print("Enter Move")
	Movetime = randf_range(10,20)
	dirTime = randf_range(1,10)
	Movedir = Vector2(randf_range(-5,5),randf_range(-5,5))
	Player = get_tree().get_first_node_in_group("Player")
	
func Update(delta: float):
	var distance = Player.global_position - enemy.global_position
	if distance.length()<200: 
		transitioned.emit("ChaseMovementState")
	if Movetime > 0:
		Movetime -= delta
		if dirTime > 0:
			dirTime -= delta
			enemy.velocity = Movedir 
		else:
			Movedir = Vector2(randf_range(-5,5),randf_range(-5,5))
			dirTime = randf_range(1,10)	
	else:
		transitioned.emit("IdleMovementState")
	
