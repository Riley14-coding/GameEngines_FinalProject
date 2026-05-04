extends Node

#@export var Model:PlayerModel
@export var Player: CharacterBody2D
@onready var HealthLabel: Label = $UI/Health
var Model:PlayerModel


func _ready():
	Model = PlayerModel.new()
	print("Connected")
	Player.HealthChange.connect(Showhealth)

func Showhealth():
	print("Working?")
	print(Model.health)
	HealthLabel.text = "Health %s" % Model.health
	#HealthLabel.text = str("Health: ", Model.health)
