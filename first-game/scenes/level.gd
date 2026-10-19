extends Node2D

var enemy_count: int = 0
var spawn_position: Vector2 = Vector2.ZERO

#first load the scene
var bullet_scene: PackedScene = load("res://scenes/bullet.tscn")
var enemy_scene: PackedScene = load("res://scenes/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_bullet_timer_timeout() -> void:
	# then create an instance
	var bullet = bullet_scene.instantiate()
	# then attach the node to the scene tree
	$bullets.add_child(bullet)


func _on_enemy_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	$enemies.add_child(enemy)
