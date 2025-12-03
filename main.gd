extends Node2D

var main
var xmas_wish
var options
var help
var credits
var _Start
var _Options
var _Help
var _Credits
var menu_screen

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main = self
	_Start = main.get_child(0)
	_Options = main.get_child(1)
	_Help = main.get_child(2)
	_Credits = main.get_child(3)
	xmas_wish = main.get_child(4)
	options = main.get_child(5)
	help = main.get_child(6)
	credits = main.get_child(7)
	menu_screen = main.get_child(8)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Esc"):
		get_tree().quit()
		pass
	if Input.is_action_just_pressed("return"):
		menu_screen.visible = true
		_Start.visible = true
		_Options.visible = true
		_Help.visible = true
		_Credits.visible = true
		xmas_wish.visible = false
		options.visible = false
		help.visible = false
		credits.visible = false
		pass
	pass
