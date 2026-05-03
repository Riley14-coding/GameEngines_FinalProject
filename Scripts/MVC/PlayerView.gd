extends Node

@export var Model:PlayerModel
@onready var HealthLabel: Label = $UI/Health

func _ready():
	print("Connected")
	Model.HealthChange.connect(Showhealth)

func Showhealth():
	print("Working?")
	HealthLabel.text = "Hello Health"
	#"Health %s" % Model.health
