
if (sprite_visible) {
   
// Draw the sprite
draw_sprite_ext(sprite_index,0, x, y,0.7,0.7,0,c_white,1);

// Draw the text at the same position
var text_to_display = "In the tool you see three cases at the time \n click on one and choose the right action. \n The right choice will increase the budget.\n Wrong choice; budget will reduce. \n You have limited time (see countdown)"; // Replace with your desired text
draw_set_color(#538DA1); // Set text color
draw_set_font(Calibri_28_B); // Set your font if you have one
draw_text(x+95, y+30, text_to_display); // Adjust y position if needed
}