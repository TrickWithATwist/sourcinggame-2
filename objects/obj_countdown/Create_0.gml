///establishing essential variables for countdown timer 


//function to load in data for count down timer 
function load_count_down_data()
{
	//establishing essential variables 
	timer_duration = 1; //initializing with value of 1
	
	//creating file pointer and reading timer file 
	var file = file_text_open_read("timer_data.csv");
	
	//reading until end of line 
	if(!file_text_eof(file))
	{
		var line = file_text_read_string(file); //reading in line as string
		var value = real(line); //converting seconds put into sheet to real number
	}
	
	//setting the value of timer_duration
	if (!is_nan(value))
	{
       timer_duration = value;
    }
	
	//close file 
	file_text_close(file);
}

//calling in loading data file 
load_count_down_data();


//using cooldown variables to count seconds 
cooldown = 1; 
cooldown_current = 0; //initializing at 0

//Helper function to pad the seconds with a leading zero if needed
function string_pad_left(str, len, char) 
{
    while (string_length(str) < len) 
	{
        str = char + str;
    }
    return str;
}