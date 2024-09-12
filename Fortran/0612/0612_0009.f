	integer function ifun(c1,c2)
	character*(*) c1,c2
	ifun = c1 .eq. c2
	end
	print *,ifun("ABC","ABC")
	print *,ifun("ABC ","ABC  ")
	print *,ifun("","")
	print *,ifun("","A")
	end
