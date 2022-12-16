/// @description Insert description here
// You can write your code in this editor



draw_set_color(c_white);

if(room == rm_esc_endGame)
	draw_text((room_width/2) -200,(room_height/2) - 50, string("Highest scores: ") + string(global.maxScore));
