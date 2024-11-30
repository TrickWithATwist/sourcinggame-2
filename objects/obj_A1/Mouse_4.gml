//check the correct answer of the question 
if(1 == global.quiz_data[global.question_number][5])
{
	//if it is then show message and go to next question 
	show_message ("well done")
}
else
{
	//show message to remove budget and go to next question 
	show_message ("wrong answer")
}
global.question_number++;