	program main
	real a(100)
	a = 1
	call sub(a(1:100:3))
        print *,'pass'
	contains
	subroutine sub(b)
	real, target:: b(:)
	b(1) = 3
	if (any(abs((/a(1),b(1)/)-3.0)>0.0001))print *,'error'
	end subroutine sub
	end program main
