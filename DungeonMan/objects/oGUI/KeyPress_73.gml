/// @description Insert description here
// You can write your code in this editor

player_lives = player_lives - 1;

if (player_lives < 0)
{
   with(oPlayer)
   {
	   instance_destroy();
   }
}


