if (obj_player.catched == 0 && !place_meeting(obj_player.x, obj_player.y, obj_solid)){
    if(position_meeting(mouse_x, mouse_y, self)){
        obj_player.sprite_index = self.sprite_index;
        //obj_player.player_spotted = 0;
        obj_player.player_metamorphose = 1;
        obj_player.vspd = 0;
        obj_player.hspd = 0;
    }
}
