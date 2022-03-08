set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get(string(plate_state) + "_dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4 + (anger_state * 2));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4 + (anger_state * 2));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 120);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6 + (anger_state * 2));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, -90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -36);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 6 + (anger_state * 2));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, -60);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.8);