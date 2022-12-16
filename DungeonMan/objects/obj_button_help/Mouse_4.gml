/// @description Insert description here
// You can write your code in this editor









// Inherit the parent event
event_inherited();
if(instance_exists(oControl))
{
	instance_destroy(oControl);
}
else
{ 
	instance_create_layer(room_width/2, room_height - 95, "Instances", oControl);
} 


audio_play_sound(clicking, 10, false);

