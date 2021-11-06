//changes the wall variable at the end of the climbing
if(attack == AT_EXTRA_1 && climb_timer == get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH) - 1 && climbing == true){
    if(climbing == true && wall == 0){
        climbing = false;
        if(prev_dir = 1){
            wall = 1;
            x += 49;
            y -= 132;
        }else if (prev_dir = -1){
            wall = 2;
            x -= 49;
            y -= 132;
        }
    }else if(climbing == true && wall == 1){
        climbing = false;
        if(prev_dir = 1){
            wall = 3;
            x -= 112;
            y -= 79;
        }else if(prev_dir = -1){
            wall = 0;
            x -= 112;
            y += 82;
        }
    }else if(climbing == true && wall == 2){
        climbing = false;
        if(prev_dir = 1){
            wall = 0;
            x += 112;
            y += 82;
        }else if(prev_dir = -1){
            wall = 3;
            x += 112;
            y -= 79;
        }
    }else if(climbing == true && wall == 3){
        climbing = false;
        if(prev_dir = 1){
            wall = 2;
            state = PS_IDLE;
            x -= 49;
            y += 132;
        }else if (prev_dir = -1){
            wall = 1;
            state = PS_IDLE;
            x += 49;
            y += 132;
        }
    }
}

//climbing timer
if(climbing == true){
    climb_timer++;
}else{
    climb_timer = 0;
}

if(climb_timer = 1){
    prev_dir = spr_dir;
}

//wall changes, gravity, movement etc
switch(wall){
    case 0:
    sprite_change_offset("hurtboxxy", 82, 64);
    if(climbing == false){
        hurtboxID.sprite_index = sprite_get("hurtboxxy");
    }
    mask_index = hurtboxID.sprite_index;
    spr_angle = 0;
    gravity_speed = 0.5;
    sprite_change_offset("0_climb1", 84, 151);
    sprite_change_offset("1_climb1", 84, 151);
    sprite_change_offset("0_idle", 42, 35);
    sprite_change_offset("1_idle", 42, 34);
    sprite_change_offset("0_run", 42, 36);
    sprite_change_offset("1_run", 42, 36);
    if(right_pressed || right_down) && (place_meeting(x + 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }else if(left_pressed || left_down) && (place_meeting(x - 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }
    break;
    
    case 1:
    if(spr_dir == 1){
        sprite_change_offset("hurtboxxy_diag", 46, 82);
    }else{
        sprite_change_offset("hurtboxxy_diag", 18, 82);
    }
    if(climbing == false){
        hurtboxID.sprite_index = sprite_get("hurtboxxy_diag");
    }
    mask_index = hurtboxID.sprite_index;
    spr_angle = 90;
    sprite_change_offset("0_climb1", 84, 141);
    sprite_change_offset("1_climb1", 84, 141);
    sprite_change_offset("0_idle", 42, 26);
    sprite_change_offset("1_idle", 42, 26);
    sprite_change_offset("0_run", 42, 26);
    sprite_change_offset("1_run", 42, 26);
    hsp = 15;
    gravity_speed = 0;
    if(up_pressed || up_down) && place_meeting(x + 4, y, asset_get("solid_32_obj")) && climbing == false{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = -3;
            break;
            case 1:
            state = PS_DASH_START;
            vsp = -4;
            break;
            case 2:
            state = PS_DASH;
            vsp = -6;
            break;
        }
        spr_dir = 1;
    }else if(down_pressed || down_down) && place_meeting(x + 4, y, asset_get("solid_32_obj")) && climbing == false{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = 3;
            break;
            case 1:
            state = PS_DASH_START;
            vsp = 4;
            break;
            case 2:
            state = PS_DASH;
            vsp = 6;
            break;
        }
        spr_dir = -1;
    }else if place_meeting(x + 4, y, asset_get("solid_32_obj")) && climbing == false{
        state = PS_IDLE;
        vsp = 0;
    }
    if(up_pressed || up_down) && (place_meeting(x, y - 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }else if(down_pressed || down_down) && (place_meeting(x, y + 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }
    break;
    
    case 2:
    if(spr_dir == 1){
        sprite_change_offset("hurtboxxy_diag", 18, 82);
    }else{
        sprite_change_offset("hurtboxxy_diag", 46, 82);
    }
    if(climbing == false){
        hurtboxID.sprite_index = sprite_get("hurtboxxy_diag");
        
    }
    mask_index = hurtboxID.sprite_index;
    spr_angle = 270;
    sprite_change_offset("0_climb1", 84, 141);
    sprite_change_offset("1_climb1", 84, 141);
    sprite_change_offset("0_idle", 42, 26);
    sprite_change_offset("1_idle", 42, 26);
    sprite_change_offset("0_run", 42, 26);
    sprite_change_offset("1_run", 42, 26);
    hsp = -15;
    gravity_speed = 0;
    if(down_pressed || down_down) && place_meeting(x - 4, y, asset_get("solid_32_obj")) && climbing == false{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = 3;
            break;
            case 1:
            state = PS_DASH_START;
            vsp = 4;
            break;
            case 2:
            state = PS_DASH;
            vsp = 6;
            break;
        }
        spr_dir = 1;
    }else if(up_pressed || up_down) && place_meeting(x - 4, y, asset_get("solid_32_obj")) && climbing == false{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            vsp = -3;
            break;
            case 1:
            state = PS_DASH_START;
            vsp = -4;
            break;
            case 2:
            state = PS_DASH;
            vsp = -6;
            break;
        }
        spr_dir = -1;
    }else if place_meeting(x - 4, y, asset_get("solid_32_obj")) && climbing == false{
        state = PS_IDLE;
        vsp = 0;
    }
    if(up_pressed || up_down) && (place_meeting(x, y - 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }else if(down_pressed || down_down) && (place_meeting(x, y + 2, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }
    break;
    
    case 3:
    sprite_change_offset("hurtboxxy", 82, 0);
    if(climbing == false){
        hurtboxID.sprite_index = sprite_get("hurtboxxy");
    }
    mask_index = hurtboxID.sprite_index;
    spr_angle = 180;
    sprite_change_offset("0_climb1", 84, 151);
    sprite_change_offset("1_climb1", 84, 151);
    sprite_change_offset("0_idle", 42, 35);
    sprite_change_offset("1_idle", 42, 34);
    sprite_change_offset("0_run", 42, 36);
    sprite_change_offset("1_run", 42, 36);
    gravity_speed = 0;
    vsp = -15;
    if(left_pressed || left_down) && place_meeting(x, y - 4, asset_get("solid_32_obj")) && climbing == false{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            hsp = -3;
            break;
            case 1:
            state = PS_DASH_START;
            hsp = -4;
            break;
            case 2:
            state = PS_DASH;
            hsp = -6;
            break;
        }
        spr_dir = 1;
    }else if(right_pressed || right_down) && place_meeting(x, y - 4, asset_get("solid_32_obj")) && climbing == false{
        switch(anger_state){
            case 0:
            state = PS_WALK;
            hsp = 3;
            break;
            case 1:
            state = PS_DASH_START;
            hsp = 4;
            break;
            case 2:
            state = PS_DASH;
            hsp = 6;
            break;
        }
        spr_dir = -1;
    }else if place_meeting(x, y - 4, asset_get("solid_32_obj")) && climbing == false{
        state = PS_IDLE;
        hsp = 0;
    }
    if(right_pressed || right_down) && (place_meeting(x + 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }else if(left_pressed || left_down) && (place_meeting(x - 2, y, asset_get("solid_32_obj")) && climb_timer == 0 && climbing == false && (state == PS_WALK || state == PS_DASH || state == PS_DASH_START)){
        set_attack(AT_EXTRA_1);
        climbing = true;
    }
    break;
}

//anger stat differences
switch(anger_state){
    case 0:
    set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 36);
    break;
    case 1:
    set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 30);
    break;
    case 2:
    set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 24);
    break;
}

if(special_anim_timer < 1000){
    special_anim_timer++
}else{
    special_anim_timer = 0;
}

visible = true;