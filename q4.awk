#awk -f q4.awk EMPLOYEES.txt
#Test GIT commit
#Test-2 from Narayana
BEGIN
{
	FS = "|"
}
{ 
	if (NR == 1)
	{
		print $0 	
	}
	else 
	{
		split($6,hire_date_array,"/")
		mm = hire_date_array[1]
		dd = hire_date_array[2]
		yyyy = hire_date_array[3] 		
		if (mm >= 01 && dd>01 && yyyy>=2000)
		{
			print $0
		}
	}

}
