	subroutine test1
	complex c(1000)/1000*0.0/
	i=1
	do while(i<1000)
	   if( c(i) .eq. 1.0 ) exit
	   i=i+1
	end do
	print *,c(1)
	end
	call test1
	end
