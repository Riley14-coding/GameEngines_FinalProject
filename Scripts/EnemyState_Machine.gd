class_name EnemyStateMachine
extends Node

@export var initial_state: State

var current_state: State
var states: Dictionary = {}

func _ready():
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.transitioned.connect(on_child_transitioned)
		else:
			push_warning("State machine contains child which is not 'State'")
	if initial_state:
		initial_state.Enter()
		current_state = initial_state
			
func _process(delta):
	current_state.Update(delta)
		
func _physics_process(delta):
	current_state.Physics_update(delta)
	
func on_child_transitioned(new_state_name: StringName) -> void:
	var new_state = states.get(new_state_name.to_lower())
	if new_state != null:
		if new_state != current_state:
			current_state.Exit()
			new_state.Enter()
			current_state = new_state
	else:
		push_warning("Called transition on a state that does not exist")
		
