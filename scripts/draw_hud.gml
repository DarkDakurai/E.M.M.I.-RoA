switch(anger_state){
    case 0:
    if(hud_timer < 20){
        hud_timer++;
    }else{
        hud_timer = 0;
    }
    break;
    case 1:
    if(hud_timer < 25){
        hud_timer++;
    }else{
        hud_timer = 0;
    }
    break;
    case 2:
    if(hud_timer < 25){
    hud_timer++;
        
    }else{
        hud_timer = 0;
    }
    break;
}

draw_sprite_ext(sprite_get("hud_" + string(anger_state)), hud_timer * 0.2, temp_x + 4, temp_y - 54, 2, 2, 0, c_white, 1);
draw_sprite_stretched_ext(sprite_get("hud_bar_" + string(anger_state)),0, temp_x + 16, temp_y - 36, (anger_value / 1000) * 132, 18, c_white, abs(bar_glow));