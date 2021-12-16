switch(attack){
    case AT_NSPECIAL:
    set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4 + (2 * anger_state));
    set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15 + (2 * anger_state));
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial"));
    timing = false;
    hit = false;
    x_pos = x;
    x_pos %= 200;
    random_timing = random_func_2(x_pos, 4, true);
    
    switch(random_timing){
        case 0:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 4);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 4);
        break;
        case 1:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 6);
        break;
        case 2:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 30);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 30);
        break;
        case 3:
        set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 40);
        
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
        
        set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 40);
        
        set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 6);
        break;
    }
    break;
    case AT_DSTRONG:
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_dstrong"));
    break;
}