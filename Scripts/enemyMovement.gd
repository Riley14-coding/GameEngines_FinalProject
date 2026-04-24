extends CharacterBody2D

const speed = 30
var dir: Vector2

var Is_Enemy_Chase: bool

func _ready():
	Is_Enemy_Chase = false;
func move(delta):
	return
func _on_timer_timeout() -> void:
	$Timer.wait_time = randi_range(1,2);
	dir = Vector2(randf_range(0,1),randf_range(0,1))
	print(dir)
