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
    sprite_index = sprite_get(string(plate_state) + "_crouch");
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