extends Area2D

var velocity: Vector2
var speed := 300


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player = get_node("/root/level/Player")
	position = player.position
	var mouse_position = get_global_mouse_position()
	velocity = position.direction_to(mouse_position) * speed
	look_at(mouse_position)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += velocity * delta


func _on_body_entered(body: Node2D) -> void:
	print(body)
	print(body.get_groups())
	if body.is_in_group("enemy"):
		#print("enemy")
		body.queue_free()
		queue_free()
	elif body.is_in_group("wall"):
		#print("wall")
		queue_free()
