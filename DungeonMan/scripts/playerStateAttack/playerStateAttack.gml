// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateAttack(){
	
	hsp = 0;
	vsp = 0;
	
	// Start of the attack
	if(sprite_index != spr_h_warriorAttacking )//|| sprite_index != spr_v_warriorAttacking)
	{
	//	if(hsp != 0)
		//{
			sprite_index = spr_h_warriorAttacking;
			image_index = 0;
			ds_list_clear(hitByAttack);
		//}
		//else
		//{
		//	sprite_index = spr_v_warriorAttacking;
			//image_index = 0;
		//	ds_list_clear(hitByAttack);
	//	}
		
	}
	
	// use attack hitbox & check for hit
	mask_index = spr_attackHitBoxes;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,oSkeleton,hitByAttackNow,false);
	if(hits > 0)
	{
		for(var i = 0; i < hits; ++i)
		{
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with(hitID)
				{
					sprite_index = spr_h_skeletonHurting;
				}
			}
			
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = spr_h_warriorIdle;
	
	if(Animation_end())
	{
		sprite_index = spr_h_warriorIdle;
		state = PLAYERSTATE.FREE;
	}
}