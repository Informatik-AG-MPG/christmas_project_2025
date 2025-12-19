extends Button

func _ready():
	#--position button in the right place--
	var screen_size = DisplayServer.screen_get_size()
	var button_size = size
	# e.g.: 1080/2 - 500/2 res: 290
	position = Vector2((screen_size.x/2) - (button_size.x/2), 1600)
	#--load the next scene--
	pressed.connect(_load_scene)
func _load_scene():
	#--check for the name of the current node--
	if (self.name == "start-button"):
		get_tree().change_scene_to_file("res://scenes/image.tscn")
	elif (self.name == "back-button"):
		get_tree().change_scene_to_file("res://scenes/main.tscn")
	else:
		pass
