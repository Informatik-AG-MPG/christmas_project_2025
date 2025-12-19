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
	_Options = self
	_Options.pressed.connect(_button_pressed)
	main = _Options.get_parent()
	_Start = main.get_child(0)
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
	pass

func _button_pressed():
	menu_screen.visible = false
	_Start.visible = false
	_Options.visible = false
	_Help.visible = false
	_Credits.visible = false
	xmas_wish.visible = false
	options.visible = true
	help.visible = false
	credits.visible = false
	pass
