/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
   global.case_number = 1;

	function load_case_data() {
    // Initialize the case data array
    global.case_data = [];
    
    // Open the CSV file for reading
    var file = file_text_open_read("case_data.csv");
    
    // Read the header row first (e.g., ID, Name, Description, etc.)
    var header = file_text_readln(file);
    var header_values = string_split(header, ",");
    
    // Add the header to the global case data
    array_push(global.case_data, header_values);
    
    // Loop through the file, line by line
    while (!file_text_eof(file)) {
        // Read a line from the file
        var line = file_text_readln(file);
        
        // Split the line into values (separated by commas)
        var values = string_split(line, ",");
        
        // Convert numeric fields to real values only if the value is a number
        for (var i = 0; i < array_length(values); i++) {
            // Check if the value is numeric before converting
            if (is_real(values[i])) {
                values[i] = real(values[i]); // Convert to real number
            }
            // Otherwise, keep the value as a string
        }
        
        // Add the row to the global case data
        array_push(global.case_data, values);
    }
    
    // Close the file after reading
    file_text_close(file);
}

// Call the function to load case data from the CSV file
load_case_data();


//local variables and functions for layer 1 
//Set maximum widths for each text field
subject_max_width = 320;
name_max_width = 200;

//function to add newline to text that is too long for layer 1 to display 
function add_newlines(text, max_width) 
{
        var words = string_split(text, " ");
        var result = "";
        var line = "";
        for (var j = 0; j < array_length(words); j++) 
		{
            if (string_width(line + words[j] + " ") > max_width) 
			{
                result += line + "\n";
                line = words[j] + " ";
            } 
			else 
			{
                line += words[j] + " ";
            }
        }
        return result + line;
    }