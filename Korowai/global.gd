extends Node

var player_current_attack = false

var current_scene = "game_level"
var transition_scene = false

var player_exit_cliffiside_posx = 0
var player_exit_cliffiside_posy = 0
var player_start_posx = 0
var player_start_posy = 0

func finish_changescene():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "game_level":
			current_scene = "cliff_side"
		else:
			current_scene = "game_level"
