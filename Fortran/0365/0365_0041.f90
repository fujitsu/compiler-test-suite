	program main
	character*10 cfun,c(10)
	do i=1,10
	  c(i) = cfun()
	end do
	print *,c
	end
	character*10 function cfun()
	cfun = 'ABC'
	end
