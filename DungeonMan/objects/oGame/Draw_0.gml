/// @description Insert description here
// You can write your code in this editor




	draw_set_color(c_white);
	if(room != rm_menu && room != rm_esc_endGame)
		draw_text(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]), string("Scores: ") + string(global.scores));
	



