extends Control

func _ready():
	GLOBAL.score = 0
	

func _process(_delta):
	get_node("Time").text = "Time: " + str(int(get_node("Time/Timer").time_left))
	get_node("Score").text = str(GLOBAL.score)
	
	if GLOBAL.count_node() <= 0:
		get_node("Time/Timer").stop()
		get_node("Sounds/LasConseguioMaifriend").play()


func _on_Timer_timeout():
	get_node("Sounds/SeTaAcabaoElTiempo").play()


func _on_SeTaAcabaoElTiempo_finished():
	get_tree().call_deferred("reload_current_scene")


func _on_LasConseguioMaifriend_finished():
	get_tree().call_deferred("reload_current_scene")
