class_name Attack_State
extends State

func Enter():
	print("Attack")
	get_tree().paused = true
	print("Game Over")
	
func Update(delta: float) -> void:
	transitioned.emit("IdleMovementState")
	
