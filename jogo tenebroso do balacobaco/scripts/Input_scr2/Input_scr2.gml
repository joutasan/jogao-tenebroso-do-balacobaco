function Input_scr2(){

	uk = keyboard_check(ord("W"))
	lk = keyboard_check(ord("A"))
    dk = keyboard_check(ord("S"))
    rk = keyboard_check(ord("D"))
	atk_k = keyboard_check(ord("V"))
	
	if (gamepad_is_connected(1))
	{	
		rk = gamepad_button_check(1, gp_padr)
		lk = gamepad_button_check(1, gp_padl)
		uk = gamepad_button_check(1, gp_padu)
		dk = gamepad_button_check(1, gp_padd)
		atk_k = gamepad_button_check(1, gp_face1)
	}
}