extends Area2D

var is_smelting: bool = false

func _ready() -> void:
	$AnimatedSprite2D.play("idle")

func _on_body_entered(body: Node2D) -> void:
	if not body.is_in_group("player"):
		return
		
	if is_smelting:
		return
		
	if NewAutoloadScript.ironOre <= 0:
		return
	
	is_smelting = true
	NewAutoloadScript.ironOre -= 1
	$AnimatedSprite2D.play("working")
	$AnimatedSprite2D2.play("on")
	await get_tree().create_timer(4.0).timeout
	
	NewAutoloadScript.iron += 1
	is_smelting = false
	$AnimatedSprite2D.play("idle")
	$AnimatedSprite2D2.play("off")
			
			
