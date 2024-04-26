	subroutine sub(r)
	common /com/a
	dimension a(10000)
	do i=1,10000
	  r = a(i) + 1
	end do
	end
	common /com/a
	dimension a(10000)
	a(1:9999) = 0
	a(10000) = 3
	call sub(x)
        write(1,*) x
	print *,'pass'
	end

