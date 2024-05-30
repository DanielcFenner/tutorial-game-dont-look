extends CanvasLayer

@onready var restart_button = %RestartButton
@onready var quit_button = %QuitButton
const MAIN = "res://scenes/Main/main.tscn"
@onready var title_label = %TitleLabel
@onready var description_label = %DescriptionLabel

func _ready():
	get_tree().paused = true
	restart_button.pressed.connect(on_restart_button_pressed)
	quit_button.pressed.connect(on_quit_button_pressed)
	
	
func set_defeat():
	title_label.text = "Defeat"
	description_label.text = "You lost!"
	

func on_restart_button_pressed():
	print("hello")
	get_tree().paused = false
	get_tree().reload_current_scene()
	


func on_quit_button_pressed():
	print("goodbye")
	get_tree().quit()
