// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateAttack(){
	
	hsp = 0;
	vsp = 0;
	
	// Start of the attack
	if(sprite_index != spr_h_warriorAttacking)
	{
		sprite_index = spr_h_warriorAttacking;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	// use attack hitbox & check for hit
}