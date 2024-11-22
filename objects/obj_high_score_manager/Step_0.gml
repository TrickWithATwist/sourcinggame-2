if(ready_to_write)
{
	show_debug_message(user_name);
	
    // User provided input
    var filename = "high_score_data.csv";
    var player_score = global.player_budget;
            
    //Append the new score
    var file = file_text_open_append(filename);
	if (file != -1) // Check if the file was opened successfully
    {
        var string_line = user_name + "," + string(player_score);
        file_text_write_string(file, string_line);
        file_text_writeln(file);
        file_text_close(file);
		
    }
    else
    {
        show_debug_message("Error opening file: " + filename);
    }

	}
