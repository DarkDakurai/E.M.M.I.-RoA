set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("0_dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 10);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 6 + (plate_state * 2));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);