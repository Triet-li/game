/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < player_lives; i += 1)
{
var _xx = gui_w - 48 - (i * 70);
draw_sprite(spr_heart, 0, _xx, 48);
}