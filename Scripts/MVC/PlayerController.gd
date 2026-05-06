extends CharacterBody2D

@export var speed = 400
signal HealthChange()

	
func get_input():
	look_at(get_global_mouse_position())
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	
func TakeDamage():
	print("Take Damage")
	var newHealth
	newHealth=Model.health - 1
	print("Health:",Model.health)
	GetHealth(newHealth)
	
func GetHealth(value):
	print("HealthSet")
	if(Model.health != value):
		print("NotEqual")
		Model.health = value
		HealthChange.emit()
