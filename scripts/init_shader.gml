switch(anger_state){
    case 0:
    if(get_player_color(player) == 13){
        set_character_color_slot( 6, 199, 199, 199 ); //eye 1
        set_character_color_slot( 7, 255, 255, 255 ); //eye 2
    }else if(get_player_color(player) == 14){
        set_character_color_slot( 6, 255, 11, 11 ); //eye 1
        set_character_color_slot( 7, 255, 155, 69 ); //eye 2
    }else if(get_player_color(player) == 15){
        set_character_color_slot( 6, 15, 181, 0 ); //eye 1
        set_character_color_slot( 7, 90, 240, 77 ); //eye 2
    }else{
        set_character_color_slot( 6, 11, 186, 255 ); //eye 1
        set_character_color_slot( 7, 69, 255, 243 ); //eye 2
    }
    break;
    case 1:
    set_character_color_slot( 6, 255, 195, 0 ); //eye 1
    set_character_color_slot( 7, 255, 230, 130 ); //eye 2
    break;
    case 2:
    if(get_player_color(player) == 14){
        set_character_color_slot( 6, 11, 186, 255 ); //eye 1
        set_character_color_slot( 7, 69, 255, 243 ); //eye 2
    }else{
        set_character_color_slot( 6, 255, 11, 11 ); //eye 1
        set_character_color_slot( 7, 255, 155, 69 ); //eye 2
    }
    break;
}