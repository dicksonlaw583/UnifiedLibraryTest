///@desc Go to the next room in 1 step
alarm[0] = 1;

switch (os_browser) {
	case browser_not_a_browser: show_debug_message("browser_not_a_browser"); break;
	case browser_unknown: show_debug_message("broser_unknown"); break;
	case browser_ie: show_debug_message("browser_ie"); break;
	case browser_ie_mobile: show_debug_message("browser_ie_mobile"); break;
	case browser_opera: show_debug_message("browser_opera"); break;
}
