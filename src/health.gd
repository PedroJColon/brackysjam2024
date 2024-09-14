extends Node

@export var health = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func decrement_health(_decrease: float) -> void:
	if health <= 0:
		health = 0
	health -= _decrease
	
