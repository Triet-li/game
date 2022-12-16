/// @description Insert description here
// You can write your code in this editor

//image_speed = 1;

if(direction >= 306 || direction <= 45) 
{
	sprite_index = spr_h_skeletonRunning; 
	image_xscale = 1;
}

if(direction >= 46 && direction <= 135) sprite_index = spr_up_skeletonRunning;

if(direction >= 136 && direction <= 225)
{
	sprite_index = spr_h_skeletonRunning;
	image_xscale = -1;
}

if(direction >= 226 && direction <= 305) sprite_index = spr_d_skeletonRunning;


if(collision_rectangle(x-120,y-120,x+120,y+120,oPlayer,false,true))
{
	self.direction = point_direction(x,y,oPlayer.x,oPlayer.y);
}