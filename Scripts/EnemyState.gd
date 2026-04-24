extends CharacterBody2D

enum States { IDLE, MOVING, CHASING, ATTACKING}
var state: States = States.IDLE

func _physics_process(delta):
	return
