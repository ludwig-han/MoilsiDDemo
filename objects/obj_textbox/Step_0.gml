// Typing animation
if (is_typing) {
    char_current += text_speed;
    
    // Typing finished
    if (char_current >= text_length) {
        char_current = text_length;
        is_typing = false;
        can_proceed = true;
    }
    
    // Skip with Z key
    if (keyboard_check_pressed(ord("Z"))) {
        char_current = text_length;
        is_typing = false;
        can_proceed = true;
        exit;
    }
}

// Close textbox with Z key
if (can_proceed && keyboard_check_pressed(ord("Z"))) {
    instance_destroy();
}