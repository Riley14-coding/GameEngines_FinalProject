extends CharacterBody2D

@export var speed = 400
@export var Model:PlayerModel

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
	Model.SetHealth(newHealth)
