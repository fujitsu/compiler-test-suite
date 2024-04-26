	subroutine test1
	complex c(1000)/1000*0.0/
	do i=1,1000
	   if( c(i) .eq. 1.0 ) exit
	end do
	print *,c(1)
	end
	call test1
	end
