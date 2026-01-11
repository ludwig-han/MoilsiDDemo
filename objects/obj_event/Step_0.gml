// Interact when close and press Z
if (distance_to_object(obj_player) < 32 && keyboard_check_pressed(ord("Z"))) {
    // Create textbox only if none exists
    if (!instance_exists(obj_textbox)) {
        var textbox = instance_create_depth(0, 0, -9999, obj_textbox);
        switch (count) {
            case 0:
                textbox.text = "You looked out the window.\nNothing can be seen.";
                textbox.text_length = string_length(textbox.text);
                count++;
                break;
            
            case 1:
                textbox.text = "You looked out the window agian.\nBut Still nothing can be seen.";
                textbox.text_length = string_length(textbox.text);
                count++;
                break;
            
            case 2:
                textbox.text = "YOU COULDN'T BELIEVE NOTHING IS OUT THERE,\nSO YOU LOOKED AGAIN AND AGAIN!!";
                textbox.text_length = string_length(textbox.text);
                count++;
                break;
            
            default:
                textbox.text = "But Nothing was there.";
                textbox.text_length = string_length(textbox.text);
                break;
        }
        
        
        // Stop player movement
        obj_player.can_move = false;
    }
}