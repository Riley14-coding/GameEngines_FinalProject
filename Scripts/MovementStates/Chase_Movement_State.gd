extends State
class_name Chase_State

@export var enemy: CharacterBody2D
@export var speed = 10
var Player: CharacterBody2D

func Enter():
	Player = get_tree().get_first_node_in_group("Player") 
	print("Start Chase")
		
func Physics_update(delta: float):
	var direction = Player.global_position - enemy.global_position
	if direction.length() < 25:
		enemy.velocity = direction.normalized() * speed
	else:
		enemy.volcity = Vector2()
	if direction.length() < 50:
		transitioned.emit(self,"Idle_State")
		
