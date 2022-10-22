extends CanvasLayer


func _on_Quit_pressed():
	get_tree().quit();

func _on_Restart_pressed():
	global.score = 0;
	get_tree().change_scene("res://pong.tscn");
