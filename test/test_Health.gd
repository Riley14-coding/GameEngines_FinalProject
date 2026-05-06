extends GutTest
var rootnode = preload("res://Scenes/MainScene.tscn")
var Player 
func before_each():
	var inst= rootnode.instantiate()
	get_tree().root.add_child(inst)
	Player = get_tree().get_first_node_in_group("Player")
	
func after_each():
	pass
	
func test_Health():
	assert_eq(Model.health,5)
func test_changeHealth():
	#var Player= $"../../../Player"
	Player.TakeDamage()
	assert_eq(Model.health,4)
	
