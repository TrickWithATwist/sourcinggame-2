if (async_load[? "id"] == name) {
	//var user_name;
    if (async_load[? "status"]) {
       user_name = async_load[? "result"];
	   
    } else {
       user_name = "Anon";
    }
	
	ready_to_write = true;

}