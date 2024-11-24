//Function to remove an element from an array at a specific index
function remove_array_element(arr, index) 
{
    if (index >= 0 && index < array_length(arr)) 
	{
        array_delete(arr, index, 1);
        return true;
    }
    return false;
}