switch(state){
    case PS_IDLE:
    sprite_index = sprite_get(string(plate_state) + "_idle");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_WALK:
    sprite_index = sprite_get(string(plate_state) + "_run");
    image_index = special_anim_timer * 0.2;
    break;
    case PS_DASH:
    sprite_index = sprite_get(string(plate_state) + "_run");
    image_index = special_anim_timer * 0.4;
    break;
    case PS_DASH_START:
    sprite_index = sprite_get(string(plate_state) + "_run");
    image_index = special_anim_timer * 0.2;
    break;
}