// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateAttack(){
	
	hsp = 0;
	vsp = 0;
	
	// Start of the attack
	if(sprite_index != spr_h_warriorAttacking )
	{
		if((sprite_index == spr_h_warriorIdle) || (sprite_index == spr_h_warriorRunning))
		{
			sprite_index = spr_h_warriorAttacking;
			image_index = 1;
			ds_list_clear(hitByAttack);
		}
		else if((sprite_index == spr_v_warriorIdle) || (sprite_index == spr_v_warrirorRunning))
		{
			sprite_index = spr_v_warriorAttacking;
			image_index = 0;
			ds_list_clear(hitByAttack);
		}
		else if ( sprite_index == spr_up_warriorRunning)
		{
			sprite_index = spr_up_warriorAttacking;
			image_index = 0;
			ds_list_clear(hitByAttack);
		}
		
	}
	
	// use attack hitbox & check for hit
	if(sprite_index == spr_h_warriorAttacking)
			mask_index = spr_attackHitBoxes;
	else if (sprite_index == spr_v_warriorAttacking)
			mask_index = spr_d_attackHitBox;
	else if (sprite_index == spr_up_warriorAttacking)
			mask_index = spr_up_attackHitBox;
	//mask_index = spr_attackHitBoxes;
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
					x = 0;
					y = 0;
					enemyBeingHit();
				
				}
			}
			
		}
	}
	ds_list_destroy(hitByAttackNow);
	
	
		
			
	mask_index = spr_v_warriorIdle;
	
	
	if(Animation_end())
	{
		sprite_index = spr_v_warriorIdle;
		state = PLAYERSTATE.FREE;
	}
}