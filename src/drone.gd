extends CharacterBody2D

@export var player: CharacterBody2D

var SPEED = 5000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = position.direction_to(player.position) * (SPEED * delta) 
	move_and_slide()
	look_at(player.position)
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullet"):
		body.queue_free()
		$Health.decrement_health(1.0)
		if $Health.health <= 0:
			queue_free()
	if body.is_in_group("player"):
		queue_free()
	pass # Replace with function body.
