extends State

class_name Idle_State

@export var enemy: CharacterBody2D

var timer : float
var Player: CharacterBody2D

func Random_Time():
	timer = randf_range(.5,2)

func Enter():
	print("Enter Idle")
	Random_Time()
	Player = get_tree().get_first_node_in_group("Player")
	
func Update(delta: float):
	var distance = Player.global_position - enemy.global_position
	if distance.length()<20: 
		transitioned.emit(self,"Chase_State")
	if timer<0:
		timer -= delta
	#else:
		#transitioned.emit(self,"Move_State")

func Exit():
	print("Exit Idle")
	return
