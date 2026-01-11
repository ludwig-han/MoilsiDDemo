// 방향키 또는 WASD
var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));

// 이동
if (key_right) x += move_speed;
if (key_left) x -= move_speed;
if (key_down) y += move_speed;
if (key_up) y -= move_speed;