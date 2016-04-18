///move_state()

// Define input
/*var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var jump = keyboard_check(ord("D"));
var jump_release = keyboard_check_released(ord("D"));*/

var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("Q"));
var up = keyboard_check(ord("Z"));
var down = keyboard_check(ord("S"));
var run = keyboard_check(vk_space);
//var jump_release = keyboard_check_released(ord("D"));

if(obj_player.player_metamorphose = 1){
    if(run){
        obj_player.sprite_index = spr_test_player;
        obj_player.player_metamorphose = 0;
        obj_player.cooldown = 0;
    }
}else{

    if((!run || breath < 5) && breath <100 ){
        breath = breath + 1;
    }
    
    if (right && up) {
        if(run && breath > 4){
            hspd = (spd + 4)/2;
            vspd = (-spd - 4)/2;
            breath = breath - 5;
        }else{
            hspd = spd/2;
            vspd = -spd/2;
        }
    }
    else if (left && up) {
        if(run && breath > 4){
            hspd = (-spd - 4)/2;
            vspd = (-spd - 4)/2;
            breath = breath - 5;
        }else{
            hspd = -spd/2;
            vspd = -spd/2;
        }
    }
    else if (left && down) { // Set player's speed
        if(run && breath > 4){
            hspd = (-spd - 4)/2;
            vspd = (spd + 4)/2;
            breath = breath - 5;
        }else{
            hspd = -spd/2;
            vspd = spd/2;
        }
    }
    else if (right && down) {
        if(run && breath > 4){
            hspd = (spd + 4)/2;
            vspd = (spd + 4)/2;
            breath = breath - 5;
        }else{
            hspd = spd/2;
            vspd = spd/2;
        }
    }else {
    
    if (right) { // Set player's speed
        if(run && breath > 4){
            hspd = spd + 4;
            breath = breath - 5;
        }else{
            hspd = spd;
        }
    }
    if (left) {
        if(run && breath > 4){
            hspd = -spd - 4;
            breath = breath - 5;
        }else{
            hspd = -spd;
        }
    }
    if (up) { // Set player's speed
        if(run && breath > 4){
            vspd = -spd - 4;
            breath = breath - 5;
        }else{
            vspd = -spd;
        }
    }
    if (down) {
        if(run && breath > 4){
            vspd = spd + 4;
            breath = breath - 5;
        }else{
            vspd = spd;
        }
    }
    
    if (hspd != 0) { // Set the player's image to the left or the right
        image_xscale = sign(hspd);
    }
    
    
    
    if(!right && !left){ // Friction
        hspd = 0;
    }
    if(!up && !down){ // Friction
        vspd = 0;
    }
}
}
