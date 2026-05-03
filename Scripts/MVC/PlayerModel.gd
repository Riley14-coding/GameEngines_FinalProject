extends Node

class_name PlayerModel
signal HealthChange()
@export var health = 5;


func SetHealth(value):
	print("HealthSet")
	if(health != value):
		print("NotEqual")
		health = value
		HealthChange.emit
#func set_health(value: int) -> void:
	#health = clamp(value, 0, 5)
	#emit_signal("health_changed", health)
