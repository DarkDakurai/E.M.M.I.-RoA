//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

switch(attack){
	case AT_NSPECIAL:
	grab_x = x + (40 * spr_dir);
    grab_y = y - 10;
	
	if(!special_down && window == 2 && window_timer >= 4){
		window = 3;
		window_timer = 0;
	}
	
	if(attack_pressed || special_pressed) && window == 6 && timing == false{
		timing = true;
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 50 + (2 * anger_state));
	}else if((attack_pressed || special_pressed) && window > 3 && window < 6 && timing == false){
		timing = true;
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15 + (2 * anger_state));
	}else if(timing == false){
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 15 + (2 * anger_state));
	}
	
	if(instance_exists(victim) && window < 7 && window >= 3){
		//keep in hitpause
        hit_player_obj.hitstop++;
        hit_player_obj.hitpause = true;
        //force move to your grab position
        victim.x = lerp(victim.x, grab_x, 0.1)
        victim.y = lerp(victim.y, grab_y, 1.1)
    }else{
        victim = noone;
    }
    
    if(window == 7){
    	hit_player_obj.grabbed = false;
    }
	break;
	case AT_NSPECIAL_AIR:
	set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 4 + (2 * anger_state));
    set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial_air"));
    set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get(string(plate_state) + "_nspecial_air"));
	grab_x = x + (40 * spr_dir);
    grab_y = y;
	
	if(window == 3 && !free){
		window = 4;
		window_timer = 0;
	}
	
	if(hit == true){
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 2);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 8);
    }else{
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 9);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 9);
    }
	
	if(attack_pressed || special_pressed) && window == 7 && timing == false && window_timer >= 3{
		timing = true;
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 50 + (2 * anger_state));
	}else if((attack_pressed || special_pressed) && window > 3 && window < 6 && timing == false){
		timing = true;
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 15 + (2 * anger_state));
	}else if(timing == false){
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 15 + (2 * anger_state));
	}
	
	if(instance_exists(victim) && window <= 7){
		//keep in hitpause
        hit_player_obj.hitstop++;
        hit_player_obj.hitpause = true;
        //force move to your grab position
        victim.x = lerp(victim.x, grab_x, 0.4)
        victim.y = lerp(victim.y, grab_y, 1.1)
    }else{
    	hit_player_obj.hitstop = 0;
        victim = noone;
    }
    
    if(window == 8){
    	hit_player_obj.grabbed = false;
    	hit_player_obj = noone;
    }
	break;
}

