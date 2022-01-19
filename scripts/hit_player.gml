if(hit_player_obj.emmi_frozen == true){
    hit_player_obj.emmi_frozen = false;
    for(a = -2; a <= 2; a += 0.8){
        set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_HSPEED, ((hit_player_obj.hsp * (2/3)) + a) * -1);
        set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_VSPEED, hit_player_obj.hsp * 1.5 + a);
        create_hitbox(AT_DSTRONG_2, 1, floor(hit_player_obj.x), floor(hit_player_obj.y + (a * 10)));
    }
}

switch(attack){
    case AT_NSPECIAL:
    hit = true;
    victim = hit_player_obj;
    grab_x = x + (40 * spr_dir);
    grab_y = y + 80;
    if(window == 3){
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 4);
        hit_player_obj.grabbed = true;
    }else{
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 8);
    }
    break;
    case AT_NSPECIAL_AIR:
    hit = true;
    victim = hit_player_obj;
    grab_x = x + (40 * spr_dir);
    grab_y = y + 80;
    if(window == 1){
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 2);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 8);
        hit_player_obj.grabbed = true;
    }else{
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 8);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 9);
    }
    break;
    case AT_FSPECIAL:
    ice_victim = hit_player_obj;
    hit_player_obj.emmi_frozen = true;
    break;
}