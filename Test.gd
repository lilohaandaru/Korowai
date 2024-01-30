extends Node2D

@onready var interaction_area = $InteractionArea

const lines: Array[String] = [
	"Hello!"
]

func _ready():
	print("Masuk tol")
	interaction_area.interact = Callable(self, "_test_func")
	print("Masuk tol")

func _test_func():
	print("Masuk tol")
	DialogManager.start_dialog(global_position, lines)
	await DialogManager.dialog_finished
