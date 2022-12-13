
if(hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); // trả về 1 nếu nhấn
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W")); 
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	key_attack = keyboard_check(vk_space) || mouse_check_button_pressed(mb_left);
}
else
{
	key_down = 0;
	key_left = 0;
	key_right = 0;
	key_up = 0;
}

switch(state)
{
	case PLAYERSTATE.FREE: playerStateFree(); break;
	case PLAYERSTATE.ATTACK: playerStateAttack(); break;
}



