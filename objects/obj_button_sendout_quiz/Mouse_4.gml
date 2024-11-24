/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

global.player_budget += global.case_data [global.case_number,21]

if (global.case_data [global.case_number,21] > 0) {
	remove_array_element(global.case_data, global.case_number)
	show_message ("well done, choose next case")
}
else show_message ("wrong choice, lost money")
