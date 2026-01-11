// Textbox background
draw_set_color(c_black);
draw_rectangle(20, 160, 300, 220, false);

// Border
draw_set_color(c_white);
draw_rectangle(20, 160, 300, 220, true);
draw_rectangle(22, 162, 298, 218, true);

// Draw text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var display_text = string_copy(text, 1, floor(char_current));
draw_text_ext(30, 170, display_text, 14, 260);

// Continue indicator
if (can_proceed) {
    draw_text(280, 200, ">");
}