#awk -f q3.awk EMPLOYEES.txt
BEGIN
{
	FS = "|"
}
{ 
	if (NR == 1)
	{
		#print $2 $6 	
		print $0 	
	}
	else 
	{
		v_job_id = $7		
		if (v_job_id == "IT_PROG" || v_job_id == "SA_MAN")
		{
			print $2 FS $7 FS $6
		}
	}

}
