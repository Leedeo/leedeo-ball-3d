extends Area

onready var camera : Camera = get_tree().get_nodes_in_group("Camera")[0] # Referencia a la cámara.
onready var hud : Control = get_tree().get_nodes_in_group("HUD")[0] # Referencia a la cámara.

func _ready():
	get_node("AnimationPlayer").play("Idle")


func _on_Coin_body_entered(body):
	if body.is_in_group("Ball"):
		camera.screen_shake(get_node("AudioStreamPlayer").stream.get_length(), 2, 100)
		hud.get_node("Score/AnimationPlayer").play("Show")
		get_node("AudioStreamPlayer").play()
		get_node("AnimationPlayer").play("Hide")
		GLOBAL.score += 100

func _on_AudioStreamPlayer_finished():
	queue_free()
