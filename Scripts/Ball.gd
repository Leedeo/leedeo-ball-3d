extends RigidBody

func _on_VisibilityNotifier_screen_exited():
	get_node("Sounds/AdiosMaricarmen").play()


func _on_AdiosMaricarmen_finished():
	get_tree().call_deferred("reload_current_scene")
