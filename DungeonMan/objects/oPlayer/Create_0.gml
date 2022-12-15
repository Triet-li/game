
hsp = 0;	 // toc do di chuyen ngang
vsp = 0;	 // toc do di chuyen doc
walksp = 6;	 // toc do di chuyen
hascontrol = true;
hp = 4;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK
}