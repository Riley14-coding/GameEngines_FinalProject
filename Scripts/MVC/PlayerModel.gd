extends Node

class_name PlayerModel

@export var health = 5;

signal health_changed(new_health)

func set_health(value: int) -> void:
	health = clamp(value, 0, 5)
	emit_signal("health_changed", health)
