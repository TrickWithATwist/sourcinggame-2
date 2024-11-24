//Establishing essential variables. 
//local variable to change budget display based on which layer the player is in
if(room == Cases_Incoming)
{
	Layer_display = 1; //display 3 cases in a menu that players can click
}
else
{
	Layer_display = 2; //display single case that player can look at and make choices
}


//Code for displaying items in Layer 1 
if(Layer_display == 1)
{
	//establishing essential variables for showing first 3 items 
	var x_position = 560; 
	var y_position = 405; 
	var button_height = 170; //height for rectange buttons that will be drawn on the screen 
	
	//setting text color and font 
	draw_set_color(c_black);
	draw_set_font(Calibri_18);
	
	
	
	//for loop through first 3 indexes of array 
	for(var i = 1; i <= 3; i++)
	{
		//essential variables for button info display (check excell sheet for reference)
		var Requester_subject = global.case_data[i][4] //Requester subject, 4th column 
		var Request_number = global.case_data[i][1] //Request number
		var Requester_name = global.case_data[i][3] //Requester name
		var Request_category = global.case_data[i][10] //category
		
		//drawing rectangle button 
		draw_set_color(c_white);
		draw_set_alpha(0.3)
		draw_rectangle(x_position, y_position + (i-1) * button_height, x_position + 1100, y_position + i * button_height,false);
		draw_set_color(c_blue);
		draw_set_alpha(1)
		//variable for position of text 
		number_pos = 560;
		subject_pos = 720;
		name_pos = 1170;
		category_pos =  1470;
		
		//applying newlines 
		Requester_subject = add_newlines(Requester_subject, subject_max_width);
		Requester_name = add_newlines(Requester_name, name_max_width);
		
		//drawing requester name and number
		draw_text_ext(number_pos, y_position + (i-1) * button_height + 35, Request_number,20,120);
		draw_set_color(c_black);
        draw_text_ext(subject_pos, y_position + (i-1) * button_height + 35, Requester_subject, 20, 300);
		draw_text_ext(name_pos, y_position + (i-1) * button_height + 35, Requester_name, 20, 200);
		draw_text_ext(category_pos, y_position + (i-1) * button_height + 35, Request_category, 20, 200);
		
		
        
        //check for mouse click
		if (mouse_check_button_pressed(mb_left))
		{
			if (point_in_rectangle(mouse_x, mouse_y, x_position, y_position + (i-1) * button_height, x_position + 400, y_position + i * button_height)) 
			{
                global.case_number = i; //specific case number  that player selects
				Layer_display = 2;
				                show_debug_message("Case " + string(global.case_number) + " selected. Moving to Layer2.");

                room_goto(Cases_Details); // going to layer 2
            }
		}
		
	}
//drawing labels
	draw_set_color(c_grey);
	draw_text(number_pos, y_position -540+ (i-1) * button_height, "ID");
	draw_text(subject_pos, y_position -540+ (i-1) * button_height, "Subject");
	draw_text(name_pos, y_position -540+ (i-1) * button_height , "Name");
	draw_text(category_pos, y_position -540+ (i-1) * button_height, "Category");	
}


//Code for display in layer 2 and not in quizmode
if((Layer_display == 2) and (room != Quiz_Room))
{

	visible = true;
	
	// Set the position for the budget display
	var x_position = 300;
	var y_position = 220;

	// Set the text color
	draw_set_color(c_black);
	draw_set_font(Calibri_14)

	// Draw the case's budget
	                show_debug_message("Case " + string(global.case_number) + " selected. Moving to Layer2.");

	
	//original code for displaying information 
draw_set_font(Calibri_b)
	draw_text_ext(x_position,y_position,global.case_data [0,1], 20, 150);
	draw_text_ext(x_position,y_position+65,global.case_data [0,2],20, 150);
	draw_text_ext(x_position,y_position+130,global.case_data [0,3],20, 150);
	draw_text_ext(x_position, y_position+200,global.case_data [0,4],20,150);
	draw_text_ext(x_position, y_position+270,global.case_data [0,5], 20,150);
	draw_text_ext(x_position, y_position+340,global.case_data [0,6],20,150);
	draw_text_ext(x_position, y_position+410,global.case_data [0,7],20,150);
	draw_text_ext(x_position, y_position+475,global.case_data [0,8],20,150);
	draw_text_ext(x_position+700, y_position,global.case_data [0,9],20,150);
	draw_text_ext(x_position+700, y_position+65,global.case_data [0,10],20,150);
	draw_text_ext(x_position+700, y_position+130,global.case_data [0,11],20,150);
	draw_text_ext(x_position+700, y_position+210,global.case_data [0,12],20,150);
	draw_text_ext(x_position+700, y_position+270,global.case_data [0,13],20,150);
	draw_text_ext(x_position+700, y_position+345,global.case_data [0,14],20,150);
	draw_set_font(Calibri)
	draw_text_ext(x_position+180, y_position,string(global.case_data [global.case_number,1]),20, 300);
	draw_text_ext(x_position+180, y_position+65,string(global.case_data [global.case_number,2]), 20, 300);
	draw_text_ext(x_position+180, y_position+130,string(global.case_data [global.case_number,3]),20, 300);
	draw_text_ext(x_position+180, y_position+200,string(global.case_data [global.case_number,4]),20, 300);
	draw_text_ext(x_position+180, y_position+270,string(global.case_data [global.case_number,5]),20, 300);
	draw_text_ext(x_position+180, y_position+345,string(global.case_data [global.case_number,6]),20, 300);
	draw_text_ext(x_position+180, y_position+410,string(global.case_data [global.case_number,7]),20, 300);
	draw_text_ext(x_position+180, y_position+480,string(global.case_data [global.case_number,8]),20, 300);
	draw_text_ext(x_position+840, y_position,string(global.case_data [global.case_number,9]),20, 300);
	draw_text_ext(x_position+840, y_position+65,string(global.case_data [global.case_number,10]),20, 300);
	draw_text_ext(x_position+840, y_position+130,string(global.case_data [global.case_number,11]),20, 300);
	draw_text_ext(x_position+840, y_position+210,string(global.case_data [global.case_number,12]),20, 300);
	draw_text_ext(x_position+840, y_position+270,string(global.case_data [global.case_number,13]),20, 300);
	draw_text_ext(x_position+840, y_position+345,string(global.case_data [global.case_number,14]),20, 300);
	
}
else if((Layer_display == 2) and (room == Quiz_Room)) //if player is in quiz mode 
{
visible = true;
	
	// Set the position for the budget display
	var x_position = 100;
	var y_position = 80;

	// Set the text color
	draw_set_color(c_black);
	draw_set_font(Calibri_14)

	// Draw the case's budget
	                show_debug_message("Case " + string(global.case_number) + " selected. Moving to Layer2.");

	
	//original code for displaying information 
draw_set_font(Calibri_b)
	draw_text_ext(x_position,y_position,global.case_data [0,1], 20, 150);
	draw_text_ext(x_position,y_position+65,global.case_data [0,2],20, 150);
	draw_text_ext(x_position,y_position+130,global.case_data [0,3],20, 150);
	draw_text_ext(x_position, y_position+200,global.case_data [0,4],20,150);
	draw_text_ext(x_position, y_position+270,global.case_data [0,5], 20,150);
	draw_text_ext(x_position, y_position+340,global.case_data [0,6],20,150);
	draw_text_ext(x_position, y_position+410,global.case_data [0,7],20,150);
	draw_text_ext(x_position, y_position+475,global.case_data [0,8],20,150);
	draw_text_ext(x_position+700, y_position,global.case_data [0,9],20,150);
	draw_text_ext(x_position+700, y_position+65,global.case_data [0,10],20,150);
	draw_text_ext(x_position+700, y_position+130,global.case_data [0,11],20,150);
	draw_text_ext(x_position+700, y_position+210,global.case_data [0,12],20,150);
	draw_text_ext(x_position+700, y_position+270,global.case_data [0,13],20,150);
	draw_text_ext(x_position+700, y_position+345,global.case_data [0,14],20,150);
	draw_set_font(Calibri)
	draw_text_ext(x_position+180, y_position,string(global.case_data [global.case_number,1]),20, 300);
	draw_text_ext(x_position+180, y_position+65,string(global.case_data [global.case_number,2]), 20, 300);
	draw_text_ext(x_position+180, y_position+130,string(global.case_data [global.case_number,3]),20, 300);
	draw_text_ext(x_position+180, y_position+200,string(global.case_data [global.case_number,4]),20, 300);
	draw_text_ext(x_position+180, y_position+270,string(global.case_data [global.case_number,5]),20, 300);
	draw_text_ext(x_position+180, y_position+345,string(global.case_data [global.case_number,6]),20, 300);
	draw_text_ext(x_position+180, y_position+410,string(global.case_data [global.case_number,7]),20, 300);
	draw_text_ext(x_position+180, y_position+480,string(global.case_data [global.case_number,8]),20, 300);
	draw_text_ext(x_position+840, y_position,string(global.case_data [global.case_number,9]),20, 300);
	draw_text_ext(x_position+840, y_position+65,string(global.case_data [global.case_number,10]),20, 300);
	draw_text_ext(x_position+840, y_position+130,string(global.case_data [global.case_number,11]),20, 300);
	draw_text_ext(x_position+840, y_position+210,string(global.case_data [global.case_number,12]),20, 300);
	draw_text_ext(x_position+840, y_position+270,string(global.case_data [global.case_number,13]),20, 300);
	draw_text_ext(x_position+840, y_position+345,string(global.case_data [global.case_number,14]),20, 300);	
}
