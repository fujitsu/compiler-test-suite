	subroutine test1
	complex a(1000)
	real b(1000)/1000*1.0/
	integer j ; j = 0
	do i=1,1000
	  a(i) = inn(b(i))
	  j=j+1
	end do
	print *,a(1),a(1000),j
	contains 
	  complex recursive function inn(r)
	  intent(in) r
	  inn = r * 2
	  end function
	end

	subroutine test2
	complex a(1000)/1000*1.0/
	real b(1000)
	integer j ; j = 0
	do i=1,1000
	  b(i) = inn(a(i))
	  j=j+1
	end do
	print *,b(1),b(1000),j
	contains 
	  real recursive function inn(c)
	  intent(in) c
	  complex c
	  inn = c * 2
	  end function
	end

	subroutine test3
	real a(1000)
	real b(1000)/1000*1.0/
	integer j ; j = 0
	do i=1,1000
	  a(i) = inn(b(i))
	  j=j+1
	end do
	print *,a(1),a(1000),j
	contains 
	  complex recursive function inn(r)
	  intent(in) r
	  inn = r * 2
	  end function
	end

	subroutine test4
	real a(1000)/1000*1.0/
	real b(1000)
	integer j ; j = 0
	do i=1,1000
	  b(i) = inn(cmplx(a(i)))
	  j=j+1
	end do
	print *,b(1),b(1000),j
	contains 
	  real recursive function inn(c)
	  intent(in) c
	  complex c
	  inn = c * 2
	  end function
	end
!
	call test1
	call test2
	call test3
	call test4
	end
