extends Node

var score : int = 0

func count_node() -> int:
	var counter = get_tree().get_nodes_in_group("Coin") # Obtenemos todos los nodos que pertenecen al grupo.
	var result = counter.size() # Luego los contamos para saber cuántos hay en pantalla.
	return result # Y retornamos el valor devuelto por la variable count.
