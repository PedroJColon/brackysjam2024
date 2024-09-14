extends CharacterBody2D

const SPEED = 720

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var collide = move_and_collide(velocity * delta)
	pass
	
func set_bullet(_position, _direction):
	rotation = _direction
	position = _position
	velocity = Vector2(SPEED, 0).rotated(rotation)


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
