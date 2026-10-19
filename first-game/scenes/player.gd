extends CharacterBody2D

@export var speed := 500

func _ready() -> void:
	position = Vector2(500, 500)
	print(self.get_path())
	add_to_group("player")

func _physics_process(delta: float) -> void:
	
	var direction := Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
	move_and_slide()
	if direction != Vector2.ZERO:
		if abs(direction.x) > abs(direction.y):
			if direction.x > 0:
				$AnimatedSprite2D.play("right")
			else:
				$AnimatedSprite2D.play("left")
		else:
			if direction.y > 0:
				$AnimatedSprite2D.play("down")
			else:
				$AnimatedSprite2D.play("up")
