#awk -f q2.awk EMPLOYEES.txt
BEGIN
{
	FS = "|"
}
{ 
	if (NR==1)
	{
		#print $2 FS $6
		print $2
	}
	else 
	{
		v = print $6 | awk -F "/" '{print $3}'
		print $v
		
	}
	 
}