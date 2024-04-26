	program main
	logical,dimension(100,100) :: a
	do i=1,100
	  do j=1,100
	    call pure(a,i,j)
	  end do
	end do
        print *,'ok'
	contains 
	  recursive subroutine pure(b,i,j)
	  logical,dimension(100,100) :: b
	  intent(in)::i,j
	  b(i,j) = .TRUE.
	  end subroutine
	end 

