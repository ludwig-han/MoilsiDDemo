// Text settings
text = "";
text_length = 0;
char_current = 0;
text_speed = 0.5;

// State
is_typing = true;
can_proceed = false;

// Box position and size (320x240 screen)
box_x = 20;           // 왼쪽에서 20픽셀
box_y = 160;          // 아래쪽 (240 - 80 = 160)
box_width = 280;      // 320 - 40 = 280 (양쪽 20픽셀 여백)
box_height = 60;      // 높이 60픽셀

// Text position
text_x = box_x + 10;
text_y = box_y + 10;
text_width = box_width - 20;

// 플레이어 움직임 정지
obj_player.can_move = false;