extends Control

@onready var iron_ore_label: Label = $VBoxContainer/IronOre
@onready var iron_label: Label = $VBoxContainer/Iron

func _process(delta: float) -> void:
	iron_ore_label.text = "Iron Ore: " + str(NewAutoloadScript.ironOre)
	iron_label.text = "Iron Ingots: " + str(NewAutoloadScript.iron)
	
