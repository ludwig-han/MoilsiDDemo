if (!can_move) {
    switch(last_direction) {
        case "front": sprite_index = spr_player_idle_front; break;
        case "back": sprite_index = spr_player_idle_back; break;
        case "left": sprite_index = spr_player_idle_left; break;
        case "right": sprite_index = spr_player_idle_right; break;
    }
    exit;
}

// 방향키 또는 WASD
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));

var is_moving = false;

// 오른쪽 이동
if (key_right) {
    if (!place_meeting(x + move_speed, y, obj_wall)) {
        x += move_speed;
    }
    sprite_index = spr_player_walk_right;
    last_direction = "right";
    is_moving = true;
}

// 왼쪽 이동
if (key_left) {
    if (!place_meeting(x - move_speed, y, obj_wall)) {
        x -= move_speed;
    }
    sprite_index = spr_player_walk_left;
    last_direction = "left";
    is_moving = true;
}

// 아래 이동
if (key_down) {
    if (!place_meeting(x, y + move_speed, obj_wall)) {
        y += move_speed;
    }
    sprite_index = spr_player_walk_front;
    last_direction = "front";
    is_moving = true;
}

// 위 이동
if (key_up) {
    if (!place_meeting(x, y - move_speed, obj_wall)) {
        y -= move_speed;
    }
    sprite_index = spr_player_walk_back;
    last_direction = "back";
    is_moving = true;
}

// 정지 시 idle 스프라이트 (옵션)
if (!is_moving) {
    switch(last_direction) {
        case "front": sprite_index = spr_player_idle_front; break;
        case "back": sprite_index = spr_player_idle_back; break;
        case "left": sprite_index = spr_player_idle_left; break;
        case "right": sprite_index = spr_player_idle_right; break;
    }
}