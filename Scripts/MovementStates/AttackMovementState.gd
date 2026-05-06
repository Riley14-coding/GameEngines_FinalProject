class_name Attack_State
extends State

func Enter():
	var Player = $"../../../Player"
	print("Attack")
	Player.TakeDamage()
	await get_tree().create_timer(1.0).timeout
	transitioned.emit("IdleMovementState")
	
	
	
	
