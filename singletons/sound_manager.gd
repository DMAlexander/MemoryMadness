extends Node


const SOUND_MAIN_MENU = "main"
const SOUND_IN_GAME = "ingame"
const SOUND_SUCCESS = "success"
const SOUND_GAME_OVER = "gameover"
const SOUND_SELECT_TILE = "tile"
const SOUND_SELECT_BUTTON = "button"

const SOUNDS: Dictionary = {
	"main" = preload("res://assets/sounds/bgm_action_3.mp3"),
	"ingame" = preload("res://assets/sounds/bgm_action_4.mp3"),
	"success" = preload("res://assets/sounds/sfx_sounds_fanfare3.wav"),
	"gameover" = preload("res://assets/sounds/sfx_sounds_powerup12.wav"),
	"tile" = preload("res://assets/sounds/sfx_sounds_impact1.wav"),
	"button" = preload("res://assets/sounds/sfx_sounds_impact7.wav")
}


func play_sound(player: AudioStreamPlayer, key: String) -> void:
	if SOUNDS.has(key) == false:
		return
	
	player.stop()
	player.stream = SOUNDS[key]
	player.play()

func play_button_click(player: AudioStreamPlayer) -> void:
	play_sound(player, SOUND_SELECT_BUTTON)
	
func play_tile_click(player: AudioStreamPlayer) -> void:
	play_sound(player, SOUND_SELECT_TILE)
