/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntLarge);
draw_set_color($00FFFF);
draw_text_transformed(x,y-150, "Instructions", 1,1,0)
draw_set_font(fntSmall);
draw_set_color($FFBFFBFF);
draw_text_ext(x,y, "The goal of the game is to help the Ant Queen expand her nest by defeating the spiders. In order to accomplish this goal the player must shoot/command ants at the spiders, below are the Game Controls to help you accomplish this:", 50,1000);
draw_text_ext(x,y+200, "Move Forwards--------------------------------> Up arrow Move Backwards--------------------------> Down arrow Change Direction Clockwise-------------> Right arrow Change Direction Counter-Clockwise----> Left arrow Shoot Ants--------------------------------------> Spacebar",50, 500);