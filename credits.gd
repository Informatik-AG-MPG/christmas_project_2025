extends Button

var button
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
	_Credits = self
	_Credits.pressed.connect(_button_pressed)
	main = _Credits.get_parent()
	_Start = main.get_child(0)
	_Options = main.get_child(1)
	_Help = main.get_child(2)
	xmas_wish = main.get_child(4)
	options = main.get_child(5)
	help = main.get_child(6)
	credits = main.get_child(7)
	menu_screen = main.get_child(8)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _button_pressed():
	menu_screen.visible = false
	_Start.visible = false
	_Options.visible = false
	_Help.visible = false
	_Credits.visible = false
	xmas_wish.visible = false
	options.visible = false
	help.visible = false
	credits.visible = true
	pass
