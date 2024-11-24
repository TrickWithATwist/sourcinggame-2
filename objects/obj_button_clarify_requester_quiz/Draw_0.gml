// Zeichne das Button-Sprite
draw_self();

// Farbe des Textes festlegen (optional)
draw_set_color(c_white); // Textfarbe auf Weiß setzen
draw_set_font(Decision_button)

// Schriftart festlegen (optional)
// draw_set_font(font_name); // Nur nötig, wenn du eine spezielle Schriftart verwenden willst

// Text in die Mitte des Buttons setzen
var button_text = "clarify\nrequester"; // Der Text, der auf dem Button erscheinen soll
var text_x = x + (sprite_width / 2) - (string_width(button_text) / 2); // Horizontale Position berechnen
var text_y = y + (sprite_height / 2) - (string_height(button_text) / 2); // Vertikale Position berechnen
draw_text(text_x, text_y, button_text); // Text zeichnen