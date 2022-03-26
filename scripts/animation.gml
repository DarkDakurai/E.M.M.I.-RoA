switch(wall){
    case 0:
    switch(state){
        case PS_IDLE:
        sprite_index = sprite_get(string(plate_state) + "_idle");
        image_index = state_timer * 0.2;
        break;
        case PS_WALK:
        sprite_index = sprite_get(string(plate_state) + "_walk");
        image_index = state_timer * 0.2;
        break;
        case PS_DASH:
        sprite_index = sprite_get(string(plate_state) + "_dash");
        image_index = state_timer * 0.3;
        break;
        case PS_DASH_START:
        sprite_index = sprite_get(string(plate_state) + "_dash_start");
        image_index = state_timer * 0.5;
        break;
        case PS_DASH_STOP:
        sprite_index = sprite_get(string(plate_state) + "_dash_stop");
        image_index = state_timer * 0.5;
        break;
        case PS_CROUCH:
        if(crawling == true){
            sprite_index = sprite_get(string(plate_state) + "_dash");
            image_index = state_timer * 0.2;
        }else{
            sprite_index = sprite_get(string(plate_state) + "_crouch");
        }
        break;
        case PS_JUMPSQUAT:
        sprite_index = sprite_get(string(plate_state) + "_jumpsquat");
        image_index = state_timer * 0.3;
        break;
        case PS_FIRST_JUMP:
        sprite_index = sprite_get(string(plate_state) + "_jump");
        image_index = state_timer * 0.2;
        if(image_index == 3){
            set_state(PS_IDLE_AIR)
        }
        break;
        case PS_DOUBLE_JUMP:
        sprite_index = sprite_get(string(plate_state) + "_djump");
        image_index = state_timer * 0.16;
        if(image_index == 3){
            set_state(PS_IDLE_AIR)
        }
        break;
        case PS_IDLE_AIR:
        sprite_index = sprite_get(string(plate_state) + "_idle_air");
        break;
        case PS_LAND:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = state_timer / 3;
        break;
        case PS_PRATFALL:
        sprite_index = sprite_get(string(plate_state) + "_pratfall");
        break;
        case PS_LANDING_LAG:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = state_timer * 0.2;
        break;
        case PS_PRATLAND:
        sprite_index = sprite_get(string(plate_state) + "_land");
        image_index = 2;
        break;
        case PS_WAVELAND:
        sprite_index = sprite_get(string(plate_state) + "_crouch");
        image_index = 4;
        break;
        case PS_WALK_TURN:
        sprite_index = (sprite_get(string(plate_state) + "_turn"));
        image_index = state_timer / 3;
        break;
        case PS_DASH_TURN:
        sprite_index = (sprite_get(string(plate_state) + "_turn"));
        image_index = state_timer / 3;
        break;
    }
    break;
    
    case 1:
    switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_walk");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_dash");
    image_index = special_anim_timer * 0.3;
    break;
    }
    break;
    
    case 2:
    switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_walk");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_dash");
    image_index = special_anim_timer * 0.3;
    break;
    }
    break;
    
    case 3:
    switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_walk");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_dash");
    image_index = special_anim_timer * 0.3;
    break;
    }
    break;
}

/*
PS_AIR_DODGE
PS_PARRY_START
PS_PARRY
PS_ROLL_BACKWARD
PS_ROLL_FORWARD
PS_TECH_GROUND
PS_TECH_BACKWARD
PS_TECH_FORWARD
PS_WALL_TECH

PS_WRAPPED
PS_FROZEN

PS_HITSTUN
PS_HITSTUN_LAND
PS_TUMBLE

PS_SPAWN
PS_RESPAWN