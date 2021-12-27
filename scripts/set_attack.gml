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
    //hitbox adapt to wall
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_dstrong", 128, 161);
        sprite_change_offset("1_dstrong", 128, 161);
        set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
        set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
        set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 6);
        set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
    }else{
        sprite_change_offset("0_dstrong", 128, 152);
        sprite_change_offset("1_dstrong", 128, 152);
        set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 30);
        set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 120);
        set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 8);
        set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 8);
        set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 8);
    }
    set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, -70 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 100 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 80 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 120 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -10);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -90);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 70);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -100);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -36);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 84);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -36);
        break;
        
        case 1:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -90 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 70 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -100 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -18 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, 84 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -18 * spr_dir);
        break;
        
        case 2:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 10 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 90 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -70 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -3 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 100 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 18 * spr_dir);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -84 * spr_dir * -1);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 18 * spr_dir);
        break;
        
        case 3:
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 10);
        set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 15);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 90);
        set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 15);
        
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -70);
        set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 15);
        
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 100);
        set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 36);
        
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -84);
        set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, 36);
        break;
    }
    break;
    
    case AT_FSTRONG:
    set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_fstrong"));
    //hitbox adapt to wall
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_fstrong", 84, 86);
        sprite_change_offset("1_fstrong", 84, 86);
        set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
        set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
        set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 40);
        set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 30);
    }else{
        sprite_change_offset("0_fstrong", 84, 77);
        sprite_change_offset("1_fstrong", 84, 77);
        set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
        set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 80);
        set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 30);
        set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
        
    }
    set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 35 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 80);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -31);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 128);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -31);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 148);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -31);
        break;
        
        case 1:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 80 * spr_dir * -1);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -12 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 128 * spr_dir * -1);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -12 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 148 * spr_dir * -1);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -12 * spr_dir);
        break;
        
        case 2:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 80 * spr_dir);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 11 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 128 * spr_dir);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 11 * spr_dir);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 148 * spr_dir);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 11 * spr_dir);
        break;
        
        case 3:
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -80);
        set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 30);
        
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -128);
        set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 30);
        
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -148);
        set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, 30);
        break;
    }
    break;
    
    case AT_USTRONG:
    set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_ustrong"));
    //hitbox adapt to wall
    if(wall == 0 || wall == 3){
        sprite_change_offset("0_ustrong", 123, 110);
        sprite_change_offset("1_ustrong", 123, 110);
        set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 140);
        set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 130);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 130);
        set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 60);
    }else{
        sprite_change_offset("0_ustrong", 123, 101);
        sprite_change_offset("1_ustrong", 123, 101);
        set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 140);
        set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 130);
        set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 130);
        set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 100);
        set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 60);
    }
    set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 60 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90 + ((wall > 1? (wall = 3? 2: 3): wall) * 90) * spr_dir);
    switch(wall){
        case 0:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -55);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -70);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -110);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 56);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -90);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -48);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -65);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -6);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -118);
        break;
        
        case 1:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 55 * spr_dir);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -54 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 0 * spr_dir);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -94 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -56 * spr_dir);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -74 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, 48 * spr_dir);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -47 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, 6 * spr_dir);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -102 * spr_dir);
        break;
        
        case 2:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -55 * spr_dir);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 54 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 0 * spr_dir);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 94 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 56 * spr_dir);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 74 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -48 * spr_dir);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 49 * spr_dir);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -6 * spr_dir);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 102 * spr_dir);
        break;
        
        case 3:
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 55);
        set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 70);
        
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
        set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, 110);
        
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -56);
        set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 90);
        
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 48);
        set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, 65);
        
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 6);
        set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, 118);
        break;
    }
    break;
    case AT_FSPECIAL:
    set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_fspecial"));
    if(free){
        move_cooldown[AT_FSPECIAL] += 1;
    }
    break;
}