extends CharacterBody2D

@onready var player = get_node("/root/level/Player")
var direction : Vector2
@export var speed = 200
var player_position : Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("enemy")
	var spawn = randi_range(0,1)
	if spawn == 0:
		position = Vector2(113,892)
	else:
		position = Vector2(1694, 94.5)
		
	player_position = player.position
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	player_position = player.position
	direction = position.direction_to(player_position)
	position += direction * speed * delta
	move_and_slide()
