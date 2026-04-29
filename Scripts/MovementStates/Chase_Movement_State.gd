extends State
class_name Chase_State

@export var enemy: CharacterBody2D
@export var speed = 50
var Player: CharacterBody2D

func Enter():
	Player = get_tree().get_first_node_in_group("Player") 
	print("Start Chase")
		
func Physics_update(delta: float):
	var direction = Player.global_position - enemy.global_position
	if direction.length() < 100:
		print("attacking")
		transitioned.emit("AttackMovementState")
	if direction.length() < 300:
		enemy.velocity = direction.normalized() * speed
	else:
		transitioned.emit("IdleMovementState")
	
func Exit():
	enemy.velocity = Vector2(0,0)
		
