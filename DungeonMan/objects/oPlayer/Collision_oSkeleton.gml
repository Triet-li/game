

with(oGUI)
{
	player_lives--;
	//if(player_lives <= 0);
}
--hp;

 
 if(sprite_index = spr_h_warriorRunning)
 {
	 sprite_index = spr_warriorHurt;
        if(other.x > self.x){
			var temp0 = instance_place(x-60,y,oWall);
			if(place_meeting(x-60,y,oWall))
			{
				x = temp0.x + 95;
			}
			else
			 x -= 60;   
        }
        else if(other.x < self.x)
		{
			var temp = instance_place(x+60,y,oWall);
            if(place_meeting(x+60,y,oWall))
			{
				x = temp.x - 15 ;
			}
			else
			 x += 60;    
        }
 }
 else if (sprite_index = spr_up_warriorRunning || sprite_index = spr_v_warrirorRunning)
 {
	 sprite_index = spr_warriorHurt;
	  if(other.y > self.y)
			{
				var temp2 = instance_place(x,y-60,oWall);
		        if(place_meeting(x,y-60,oWall))
				{
					y = temp2.y + 123;
				}
				else
				 y -= 60;  
	        }
	        else
			{
	           var temp3 = instance_place(x,y+60,oWall);
		        if(place_meeting(x,y+60,oWall))
				{
					y = temp3.y - 15;
				}
				else
				 y -= 60;  
			}
 }
