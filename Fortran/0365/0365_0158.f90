	module moda 
	contains 
	  recursive subroutine test
	  logical,dimension(100,100) :: a
	  do i=0,99
	    do j=0,99
	      call pure(a,i+1,j+1)
	    end do
	  end do
	  print *,a(1,1)
	  end subroutine
	  recursive subroutine pure(b,i,j)
	  logical,dimension(100,100) :: b
	  intent(in)::i,j
	  b(i,j) = .TRUE.
	  end subroutine
	end 
!
	module modb
	contains 
	  recursive subroutine test
	  logical,dimension(100,100) :: a
	  do i=0,99
	    do j=0,99
	      call pure(a,i+1,j+1)
	    end do
	  end do
	  print *,a(1,1)
	  contains
	    recursive subroutine pure(b,i,j)
	    logical,dimension(100,100) :: b
	    intent(in)::i,j
	    b(i,j) = .TRUE.
	    end subroutine
	  end subroutine
	end 
	subroutine test1
	use moda
	call test
	end
	subroutine test2
	use modb
	call test
	end
	call test1
	call test2
	end
