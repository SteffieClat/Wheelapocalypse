/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_lime)
draw_set_font(fnt_rowdies_34)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

var _t=""
_t+= string(t_min)
_t+=":"
if t_sec>9 {_t+=""+string(t_sec)}
if t_sec<10{_t+="0"+string(t_sec)}
_t+="."
_t+=string(t_mil)

draw_text(1500,5,_t)