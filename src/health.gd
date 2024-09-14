extends Node

@export var health = 3

var dead = false

func decrement_health(_decrease: float) -> void:
	if check_health():
		health = 0
		dead = true
	health -= _decrease
	
func check_health() -> bool:
	return health <= 0

func check_state() -> bool:
	return dead
