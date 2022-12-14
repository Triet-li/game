
key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); // trả về 1 nếu nhấn
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W")); 
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));



var h_move = key_right - key_left; // nếu dương thì di chuyển sang phải và ngược lại
var v_move = key_down - key_up;    // nếu dương thì di chuyển xuống dưới và ngược lại
hsp = h_move * walksp;
vsp = v_move * walksp;



// kiểm tra va chạm ngang
if( place_meeting(x+hsp, y, oWall))
{
	// this loops: moving closer to the wall before stopping
	while( !place_meeting(x+sign(hsp), y, oWall)) // sign returning 1 if hsp is positive and otherwise
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp; // x là tọa độ x trong room


// kiểm tra va chạm thẳng đứng
if( place_meeting(x, y+vsp, oWall))
{
	// this loops: moving closer to the wall before stopping
	while( !place_meeting(x, y+sign(vsp), oWall)) // sign returning 1 if hsp is positive and otherwise
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 



// đồ họa
if(key_left || key_right)
{
	image_speed = 1;
	if(hsp == 0)
		sprite_index = spr_h_warriorIdle;
	else
		sprite_index = spr_h_warriorRunning;
}
else
{
	image_speed = 1;
	if(vsp == 0)
		sprite_index = spr_v_warriorIdle;
	else if( key_up )
		sprite_index = spr_back_warriorRunning;
	else
		sprite_index = spr_v_warrirorRunning;
}

if(hsp != 0) image_xscale = sign(hsp); // làm cho nhân vật quay phải hoặc trái




