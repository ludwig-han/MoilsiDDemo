// Interact when close and press Z
if (distance_to_object(obj_player) < 32 && keyboard_check_pressed(ord("Z"))) {
    // Create textbox only if none exists
    if (!instance_exists(obj_textbox)) {
        var textbox = instance_create_depth(0, 0, -9999, obj_textbox);
        switch (count) {
            case 0:
                textbox.text = "You can't go outside.";
                textbox.text_length = string_length(textbox.text);
                count++;
                break;
            default:
                textbox.text = "Just you can't";
                textbox.text_length = string_length(textbox.text);
                break;
        }
        
        
        // Stop player movement
        obj_player.can_move = false;
    }
}