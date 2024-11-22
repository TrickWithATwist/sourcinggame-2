// Update timer logic
if (timer_duration > 0)
{
    // Decrease the timer
    timer_duration -= delta_time / 1000000;  // Convert microseconds to seconds
}
else
{
    timer_duration = 0;  // Ensure it doesn't go negative
}

// Convert timer_duration to whole minutes and seconds
var total_seconds = floor(timer_duration);
var minutes = floor(total_seconds / 60);
var seconds = total_seconds % 60;

// Format the time string
var time_string = string(minutes) + ":" + string_pad_left(string(seconds), 2, "0");



// Draw the formatted time string
draw_text(10, 10, time_string);

//when timer is 0 
if(timer_duration == 0)
{
	room_goto(High_score_end_room);
	instance_destroy(obj_Case);
	instance_destroy();
}