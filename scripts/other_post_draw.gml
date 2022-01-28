if(emmi_frozen == true){
    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1) * spr_dir, small_sprites + 1, 0, c_aqua, 0.8);
}

if(emmi_shocked == true){
    if(shock_shader > -0.6){
        shock_shader -= 0.04
    }else if(shock_shader == -0.6){
        shock_shader = 0.6;
    }
    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1) * spr_dir, small_sprites + 1, 0, c_fuchsia, abs(shock_shader));
}