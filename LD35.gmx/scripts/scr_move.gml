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
/*var jump = keyboard_check(ord("D"));
var jump_release = keyboard_check_released(ord("D"));*/


if (right) { // Set player's speed
    hspd = spd;
}
if (left) {
    hspd = -spd;
}
if (up) { // Set player's speed
    vspd = -spd;
}
if (down) {
    vspd = spd;
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
