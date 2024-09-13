extends CharacterBody2D

@export var player: CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = position.direction_to(player.position) * 100
	move_and_slide()
	look_at(player.position)
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()
	player.queue_free()
	pass # Replace with function body.
