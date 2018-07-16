#awk -f q1.awk JOBS.txt
BEGIN
{
	FS = "|"
}
{ 
	min_salary = $3
	if(NR==1)
		print $0
	if( min_salary > 10000 ) 
		print $0 

}

