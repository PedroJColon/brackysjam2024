extends CharacterBody2D

var bullet = preload("res://scenes/bullet.tscn")

var SPEED = 300
var turn = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	position.x += SPEED * delta;
	
	move_and_slide()
	pass


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	SPEED *= -1
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	var b = bullet.instantiate()
	b.set_bullet($BulletSpawn.global_position, 89)
	get_tree().root.add_child(b)
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullet"):
		body.queue_free()
		$Health.decrement_health(1)
		if $Health.check_state():
			queue_free()
	pass # Replace with function body.
