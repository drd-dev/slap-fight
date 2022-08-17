/// @description Draw the key


draw_self();


draw_set_font(fnt1);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

text = string(key);


draw_text_transformed(x, y- 8, text, 0.5, 0.5, 0);
