extends CanvasLayer

func transition_in() -> void:
	$AnimationPlayer.play("fade_to_normal")

func transition_out() -> void:
	$AnimationPlayer.play("fade_to_black")

func change_scene(target: String) -> void:
	transition_out()
	yield($AnimationPlayer, 'animation_finished')
	if target:
		get_tree().change_scene(target)
		transition_in()
	else:
		get_tree().quit()
	