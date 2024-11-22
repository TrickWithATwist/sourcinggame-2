// Draw the sprite
draw_sprite(sprite_index, image_index, x, y);

// Draw the text at the same position
var text_to_display = "Thank you very much\n for your work,\n well done"; // Replace with your desired text
draw_set_color(c_dkgray); // Set text color
draw_set_font(Calibri_20); // Set your font if you have one
draw_text(x+40, y+50, "Budget (CHF): " + string(global.player_budget)); // Adjust y position if needed