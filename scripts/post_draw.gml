shader_start();
if(attack == AT_USPECIAL && window == 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if(plate_state == 0){
        draw_sprite_ext(sprite_get("0_uspecial_head_" + string(anger_state)), head_rot, (free? x + (spr_dir = 1? 6: - 8): x), (free? y + (spr_dir = 1? 8: 10): y), 2 * spr_dir, 2, 0, c_white, 1);
    }else{
        draw_sprite_ext(sprite_get("1_uspecial_head_" + string(anger_state)), head_rot, (free? x + (spr_dir = 1? - 2: 0): x), (free? y + (spr_dir = 1? - 2: -2): y), 2 * spr_dir, 2, 0, c_white, 1);
    }
}
shader_end();

if(attack == AT_DATTACK && window_timer % 10 < 5 && state == PS_ATTACK_GROUND){
    gpu_set_fog(true, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, 2 * spr_dir, 2, spr_angle, c_white, 1);
    gpu_set_fog(false, c_white, 0, 1);
}else{
    gpu_set_fog(false, c_white, 0, 1);
}