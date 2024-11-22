/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

global.player_budget += global.case_data [global.case_number,16]

if (global.case_data [global.case_number,16] > 0) {
	remove_array_element(global.case_data, global.case_number)
	show_message ("well done, choose next case")
	room_goto(Cases_Incoming);
}
else show_message ("wrong choice, lost money")
