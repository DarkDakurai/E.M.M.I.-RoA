if(other_player_id.window >= 3 && other_player_id.window < 8 && other_player_id.attack == AT_NSPECIAL && other_player_id.hit == true && grabbed == true){
	//change angle
	if(other_player_id.spr_dir == 1){
	    spr_dir = -1;
	    spr_angle = 90 * spr_dir
	}else if(other_player_id.spr_dir == -1){
	    spr_dir = 1;
	    spr_angle = 90 * spr_dir
	}
}else if(other_player_id.window < 8 && other_player_id.attack == AT_NSPECIAL_AIR && other_player_id.hit == true && instance_exists(other_player_id.victim) && grabbed == true){
	//change angle
	if(other_player_id.spr_dir == 1){
	    spr_dir = -1;
	    spr_angle = 90 * spr_dir
	}else if(other_player_id.spr_dir == -1){
	    spr_dir = 1;
	    spr_angle = 90 * spr_dir
	}
}else{
    spr_angle = 0;
}