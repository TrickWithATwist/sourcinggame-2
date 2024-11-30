/// @description loading in quiz questions and establishing 2d array 
global.question_number = 0; //question number is initialized at 0

//loading quiz data 
function load_quiz()
{
	global.quiz_data = []; //initialize empty array 
	
	//open file and parse through data 
	var file = file_text_open_read("quiz_data.csv");
	
	//read and append each row to the array 
	while (!file_text_eof(file))
	{
		var line = file_text_readln(file);
		var values = string_split(line, ",");
		
		// Convert numeric fields to real values only if the value is a number
        for (var i = 0; i < array_length(values); i++) {
            // Check if the value is numeric before converting
            if (is_real(values[i])) {
                values[i] = real(values[i]); // Convert to real number
            }
            // Otherwise, keep the value as a string
        }
        
        // Add the row to quiz data
        array_push(global.quiz_data, values);
	}
	
	 // Close the file after reading
    file_text_close(file);
}

//call function 
load_quiz();
