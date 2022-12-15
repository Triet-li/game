

with(oGUI)
{
	player_lives--;
	//if(player_lives <= 0);
		
}
sprite_index = spr_v_warriorHurting;

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(5, direction);
vsp = lengthdir_y(20, direction);
if(sign(hsp) != 0) image_xscale = sign(hsp);




