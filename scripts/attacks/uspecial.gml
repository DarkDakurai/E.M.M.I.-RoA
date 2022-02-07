set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("0_uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, sin(degtorad(spr_angle)) * 20);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, sin(degtorad(spr_angle)) * 20);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 9);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 0);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 41);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED, 0);


set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 125);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 125);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);