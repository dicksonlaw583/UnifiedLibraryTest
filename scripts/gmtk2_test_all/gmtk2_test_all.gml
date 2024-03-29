///@func gmtk2_test_all()
///@desc Test all GMTwerk features.
function gmtk2_test_all() {
	global.__test_fails__ = 0;
	var timeA = current_time;
	
	/** vv Place tests here vv **/
	gmtk2_test_basics();
	gmtk2_test_delay();
	gmtk2_test_repeat();
	gmtk2_test_foreach();
	gmtk2_test_while();
	gmtk2_test_whentrue();
	gmtk2_test_whentoggle();
	gmtk2_test_itinerary();
	gmtk2_test_selectors();
	gmtk2_test_logvalue();
	gmtk2_test_blends();
	gmtk2_test_tween();
	gmtk2_test_track();
	gmtk2_test_twerk_wave();
	gmtk2_test_twerk();
	gmtk2_test_workflow();
	gmtk2_test_queuevalue();
	gmtk2_test_bugs();
	/** ^^ Place tests here ^^ **/
	
	var timeB = current_time;
	show_debug_message("GMTwerk2 synchronous tests completed in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__;
}
