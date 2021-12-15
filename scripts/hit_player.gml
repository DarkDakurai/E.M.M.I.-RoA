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
}