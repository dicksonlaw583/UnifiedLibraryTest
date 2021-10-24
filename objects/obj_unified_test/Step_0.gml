///@desc Look for a green background to go to the next room
if (layer_background_get_blend(layer_background_get_id(layer_get_id("Background"))) == c_green) {
	room_goto_next();
}
