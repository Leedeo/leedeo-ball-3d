extends Camera

onready var rng = RandomNumberGenerator.new() # Variable para generar números aleatorios.

# Función creada para generar un número aleatorio.
func random(min_number, max_number):
	rng.randomize()
	var random = rng.randf_range(min_number, max_number)
	return random


func shake_camera(shake_power) -> void: # Función que vampos a interpolar con Tween.
	h_offset = random(-shake_power, shake_power) # Afectaremos a la propiedad offset.
	v_offset = random(-shake_power, shake_power)


func screen_shake(shake_lenght : float, shake_power : float, shake_priority : int) -> void:
	var current_shake_priority : int = 0
	
	if shake_priority > current_shake_priority:
		get_node("Tween").interpolate_method(
			self, # Objeto afectado.
			"shake_camera", # Método o función afectada. 
			shake_power, # Valor inicial.
			0, # Valor final, es 0 porque queremos que regrese a su valor original.
			shake_lenght, # Tiempo que transcurre entre uno y otro.
			Tween.TRANS_SINE, # Transición inicial.
			Tween.EASE_OUT # Transición final.
		)
		get_node("Tween").start()
