///move(collision_object)
var collision_object = argument0;
var collision_object2 = argument1;
hspd_tmp = 0;
vspd_tmp = 0;


// Horizontal collisions

if(hspd < 0){
    hspd_tmp = -1;
}else if(hspd > 0){
    hspd_tmp = +1;
}

if(vspd < 0){
    vspd_tmp = -1;
}else if(vspd > 0){
    vspd_tmp = +1;
}

if (place_meeting(x+hspd + hspd_tmp, y, collision_object)){
    while (!place_meeting(x+sign(hspd), y, collision_object)) {
        x += sign(hspd);
    }
    hspd = 0;
}else if(place_meeting(x+hspd + hspd_tmp, y, collision_object2)){
    while (!place_meeting(x+sign(hspd), y, collision_object2)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

// Vertical collisions
if (place_meeting(x, y+vspd + vspd_tmp, collision_object)){
    while (!place_meeting(x, y+sign(vspd), collision_object)) {
        y += sign(vspd);
    }
    vspd = 0;
}else if(place_meeting(x, y+vspd + vspd_tmp, collision_object2)){
    while (!place_meeting(x, y+sign(vspd), collision_object2)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
