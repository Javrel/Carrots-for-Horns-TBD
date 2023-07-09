extends Node2D


export var mainGameScene : PackedScene

var menu_fade_out = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func play_hover():
	$Audio/Hover.play()

func play_select():
	$Audio/Select.play()
	
func transition(scene):
	if scene:
		get_tree().change_scene(scene)
	else:
		get_tree().quit()
		
		
func _on_QuitButton_button_up():
	transition("")
	
func _on_NewGame2_button_up():
	transition("res://level2.tscn")
	
func _on_NewGame1_button_up():
	transition("res://level1.tscn")
	
func _on_OptionsButton_button_up():
	pass # Replace with function body.
	
func _on_NewGame1_mouse_entered():
	play_hover()
	
func _on_NewGame2_mouse_entered():
	play_hover()

func _on_OptionsButton_mouse_entered():
	play_hover()

func _on_QuitButton_mouse_entered():
	play_hover()

func _on_QuitButton_button_down():
	play_select()

func _on_OptionsButton_button_down():
	play_select()

func _on_NewGame2_button_down():
	play_select()

func _on_NewGame1_button_down():
	play_select()


