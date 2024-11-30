//drawing the row of the question 
//row includes text, answer 1, 2, 3, 4, and index of correct answer
//ex: "Question 1", "Wrong", "Wrong, "Wrong", "Correct", 4
// global.quiz_question = 0, text index = 0, "Correct" = 4

// Set the text color
	draw_set_color(c_black);
	draw_set_font(Calibri_28_B)
	
//for loop draw 5 indexes 
for(i = 0; i < 5; i++)
{
	draw_text(500, 200 + (50 * i), global.quiz_data[global.question_number][i]);
}