function input_scr(){

	rk = keyboard_check(vk_right)
	lk = keyboard_check(vk_left)
	uk = keyboard_check(vk_up)
	dk = keyboard_check(vk_down)
	atk_k = mouse_check_button(mb_left)
	
/*	if (gamepad_is_connected(0))
	{
		gamepad_set_axis_deadzone(0, .005)
		
		rk = (gamepad_axis_value(0, gp_axisrh) > 0.5)
		lk = (gamepad_axis_value(0, gp_axislh) < 0.5)
		uk = (gamepad_axis_value(0, gp_axislv) > 0.5)
		dk = (gamepad_axis_value(0, gp_axislv) < 0.5)
		atk_k = mouse_check_button(mb_left)
		
		
	}*/
	
	if (gamepad_is_connected(0))
	{	
		rk = gamepad_button_check(0, gp_padr)
		lk = gamepad_button_check(0, gp_padl)
		uk = gamepad_button_check(0, gp_padu)
		dk = gamepad_button_check(0, gp_padd)
		atk_k = gamepad_button_check(0, gp_face1)
	}

}