extends Node

#@export var Model:PlayerModel
@export var Player: CharacterBody2D
@onready var HealthLabel: Label = $UI/Health


func _ready():
	Player.HealthChange.connect(Showhealth)

func Showhealth():
	if(Model.health>0):
		HealthLabel.text = "Health %s" % Model.health
	else:
		HealthLabel.text = "Game Over"
		get_tree().paused = true
