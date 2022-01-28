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
	case AT_DSTRONG:
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8 + (anger_state * 2));
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8 + (anger_state * 2));
	set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 8 + (anger_state * 2));
	break;
	case AT_FSTRONG:
	if(window == 1){
		move_cooldown[AT_FSTRONG] = 30;
	}
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10 + (anger_state * 2));
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12 + (anger_state * 2));
	set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 14 + (anger_state * 2));
	break;
	case AT_USTRONG:
	if(window == 3 && window_timer == 10 && wall == 0){
		spr_dir = (spr_dir = 1? -1: 1);
		x += 4 * spr_dir;
	}
	move_cooldown[AT_USTRONG] = 20;
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7 + (anger_state * 2));
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 7 + (anger_state * 2));
	set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7 + (anger_state * 2));
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7 + (anger_state * 2));
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 7 + (anger_state * 2));
	break;
	case AT_FSPECIAL:
	if(window == 3 && window_timer == 9){
		move_cooldown[AT_FSPECIAL] = 90;
	}
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6 + (anger_state * 2));
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6 + (anger_state * 2));
	set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6 + (anger_state * 2));
	break;
	case AT_DSPECIAL:
	if(window == 4 && window_timer >= 17){
		move_cooldown[AT_DSPECIAL] = 120;
	}
	if(!special_down && (window == 2 || window == 3) && (window == 2? window_timer >= 30 : window_timer >= 0)){
		window = 5;
		window_timer = 0;
	}
	if(window == 2){
		if(window_timer <= 40){
			orb_level = 0;
			fire = 1;
		}else{
			orb_level = 1;
			fire = 1;
		}
	}else if(window == 3){
		orb_level = 2;
		fire = 1;
	}
	if(fire == 1 && window == 1){
		window = 4;
		window_timer = 0;
		fire = 0;
	}
	if(window == 4 && window_timer < 15){
		switch(orb_level){
			case 0:
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_small"));
			var best_target = noone;
			with (oPlayer) if self != other { best_target = self };
			var enemy_dir = point_direction(x + 66, y, best_target.x, best_target.y);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8 * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -38);
			set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4 + (anger_state * 2));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_small);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_small);
			break;
			
			case 1:
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_med"));
			var best_target = noone;
			with (oPlayer) if self != other { best_target = self };
			var enemy_dir = point_direction(x + 66, y, best_target.x, best_target.y);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8 * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
			set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6 + (anger_state * 2));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_med);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_med);
			break;
			
			case 2:
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_big"));
			var best_target = noone;
			with (oPlayer) if self != other { best_target = self };
			var enemy_dir = point_direction(x + 66, y, best_target.x, best_target.y);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8 * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
			set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8 + (anger_state * 2));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_big);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_big);
			break;
		}
	}
	break;
	case AT_JAB:
	
	//makes the spinny spinny
	if(attack_down && window == 5){
		set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 9);
	}else{
		set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
	}
	
	//better cancel
	if(attack_pressed || attack_down){
		if(window == 1 && window_timer >= 15){
			set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 0);
		}else{
			set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
		}
		if(window == 2 && window_timer >= 9){
			set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 0);
		}else{
			set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
		}
	}
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2 + (anger_state * 2));
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2 + (anger_state * 2));
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1 + anger_state);
	set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1 + anger_state);
	set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 1 + anger_state);
	set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 4 + (anger_state * 2));
	break;
	
	case AT_FTILT:
	if(window == 2 && ftilt_cancel == 0 && attack_pressed){
		ftilt_cancel = 1;
	}
	if(ftilt_cancel == 1){
		set_window_value(AT_FTILT, 2, AG_WINDOW_GOTO, 3);
	}else{
		set_window_value(AT_FTILT, 2, AG_WINDOW_GOTO, 4);
	}
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4 + (anger_state * 2));
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4 + (anger_state * 2));
	set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 6 + (anger_state * 2));
	set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 6 + (anger_state * 2));
	break;
}

//sprite changes
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial"));
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_dstrong"));
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_fstrong"));
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_ustrong"));
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial_air"));
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_fspecial"));
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get(string(plate_state) + "_ftilt"));


