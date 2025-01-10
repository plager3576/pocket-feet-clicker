extends Node2D

var stopy = 0


var clickers = []
func _ready() -> void:
	var temp = $GUI/Clickers.get_children()
	for child in temp:
		clickers.append([child, 0])
	print(clickers)


var change_image = 0
func _process(delta: float) -> void:
	if change_image <= 0:
		change_image = 10
		for x in $GUI/Clickers.get_children():
			x.hide()
		for va in clickers:
			va[1] -= 1
		var ndone = true
		while ndone:
			var los = randi_range(0, clickers.size() - 1)
			if clickers[los][1] <= 0:
				ndone = false
				clickers[los][0].show()
				clickers[los][1] = 3
	else:
		change_image -= delta



func _on_stupka_pressed() -> void:
	stopy += 1
	print(stopy)
