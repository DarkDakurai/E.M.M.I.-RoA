var temp_x = x;
var temp_y = y;

var num_alts = 27;
var alt_cur = get_player_color(player);
if "prev_alt" not in self {
       prev_alt = 0;  
}


// Intro Sound
//sound_play(sound_get("oh"));

//alt names
alt_name[0] = "E.M.M.I.-02SM";
alt_name[1] = "E.M.M.I.-01P";
alt_name[2] = "E.M.M.I.-03MB";
alt_name[3] = "E.M.M.I.-04SB";
alt_name[4] = "E.M.M.I.-05IM";
alt_name[5] = "E.M.M.I.-06WB";
alt_name[6] = "E.M.M.I.-07PB";
alt_name[7] = "E.M.M.I.-08PS";
alt_name[8] = "E.M.M.I.-09VS";
alt_name[9] = "E.M.M.I.-10GS";
alt_name[10] = "E.M.M.I.-11KR";
alt_name[11] = "E.M.M.I.-12RL";
alt_name[12] = "E.M.M.I.-13RB";
alt_name[13] = "E.M.M.I.-01EVA";
alt_name[14] = "E.M.M.I.-00EVA";
alt_name[15] = "E.M.M.I.-02EVA";
alt_name[16] = "E.M.M.I.-14IV";
alt_name[17] = "E.M.M.I.-15SL";
alt_name[18] = "E.M.M.I.-16MG";
alt_name[19] = "E.M.M.I.-17WM";
alt_name[20] = "E.M.M.I.-18FS";
alt_name[21] = "E.M.M.I.-19FV";
alt_name[22] = "E.M.M.I.-20FG";
alt_name[23] = "E.M.M.I.-21ΩS";
alt_name[24] = "E.M.M.I.-22EA";
alt_name[25] = "E.M.M.I.-23AB";
alt_name[26] = "E.M.M.I.-24SN";

draw_set_halign(fa_left);

//sound stuff
sound_set[0] = "sound ON";
sound_set[1] = "turret ON";
sound_set[2] = "sound OFF";

if "alpher" not in self {
       alpher = 1  
}

if "sound" not in self {
       sound = 0  
}

if(alpher > 0){
    alpher -= 0.05;
}

if(alt_cur == 0 && prev_alt == 26){
    alpher = 3;
    if(sound < 2){
        sound++;
    }else{
        sound = 0;
    }
}else if(alt_cur == 26 && prev_alt == 0){
    alpher = 3;
    if(sound > 0){
        sound--;
    }else{
        sound = 2;
    }
}

set_color_profile_slot(27, 0, sound, 0, 0);

draw_sprite_ext(sprite_get("sound"), sound, temp_x + 12, temp_y + 42, 2, 2, 0, c_white, alpher);
draw_set_font(asset_get("fName"));
draw_text_ext_color(temp_x + 42, temp_y + 46, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 38, temp_y + 46, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 40, temp_y + 48, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 40, temp_y + 44, sound_set[sound], 1, 100000000000, c_black, c_black, c_black, c_black, alpher);
draw_text_ext_color(temp_x + 40, temp_y + 46, sound_set[sound], 1, 100000000000, c_white, c_white, c_white, c_white, alpher);

prev_alt = alt_cur;

//extra icons
if(alt_cur == 12){
    draw_sprite_ext(sprite_get("hadar_sen_olmen"), 0, temp_x + 10, temp_y + 120, 2, 2, 0, c_white, 1);
}else if(alt_cur == 24){
    draw_sprite_ext(sprite_get("ccs_icons"), 3, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}else if(alt_cur == 25){
    draw_sprite_ext(sprite_get("ccs_icons"), 1, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}else if(alt_cur == 26){
    draw_sprite_ext(sprite_get("ccs_icons"), 2, temp_x + 180, temp_y + 102, 1, 1, 0, c_white, 1);
}

//alt name
textDraw(temp_x + 28, temp_y + 151, "medFont", c_white, 0, 100000, 1, false, 1, alt_name[alt_cur]);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color, outline)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], argument[5]);



