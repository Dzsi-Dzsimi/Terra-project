extends Area2D

func _on_body_entered(body: Node2D) -> void:
	#print("iron ore: ", NewAutoloadScript.ironOre)
	if body.is_in_group("player"):
		if NewAutoloadScript.ironOre < 5:
			NewAutoloadScript.ironOre += 1
			#print("iron ore: ", NewAutoloadScript.ironOre)
