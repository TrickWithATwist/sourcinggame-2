
// Draw the sprite

draw_sprite_ext(sprite_index,0, x, y,0.5,0.5,0,c_white,1);

// Draw the text at the same position
var text_to_display = "Thank you very much\n for your work,\n well done"; // Replace with your desired text
draw_set_color(c_dkgray); // Set text color
draw_set_font(Endscreen_Speak); // Set your font if you have one
draw_text(x+85, y+30, text_to_display); // Adjust y position if needed