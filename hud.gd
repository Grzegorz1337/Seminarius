extends CanvasLayer

signal start_game
# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _on_start_pressed():
	$start.hide()
	$Score.text = "0"
	emit_signal("start_game")
	$Message.text = "Gra zaraz\nsie zacznie"


func _on_ScoreTimer_timeout():
	$Score.text = str(int($Score.text) + 1)


func _on_MobTimer_timeout():
	$Message.hide()
	



func _on_Player_hit():
	$Message.text = "GAME\nOVER"
	$Message.show()
	$start.show()
