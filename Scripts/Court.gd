extends Spatial

const SPEED = 16

func _process(delta):
	if Input.is_action_pressed("ui_up") and rotation_degrees.x > -20:
		rotation_degrees.x -= SPEED * delta
	elif Input.is_action_pressed("ui_down") and rotation_degrees.x < 10:
		rotation_degrees.x += SPEED * delta
	
	if Input.is_action_pressed("ui_left") and rotation_degrees.z < 20:
		rotation_degrees.z += SPEED * delta
	elif Input.is_action_pressed("ui_right") and rotation_degrees.z > -20:
		rotation_degrees.z -= SPEED * delta
