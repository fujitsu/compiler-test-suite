	module moda 
	contains 
	  recursive subroutine test
	  logical,dimension(100,100) :: a
	  do i=0,99
	    call pure(a,i+1)
	  end do
	  print *,a(1,1)
	  contains
	    recursive subroutine pure(a,i)
	    logical,dimension(100,100) :: a
	    logical n
	    do j=1,100
	      call prc(n)
	      a(i,j) = n
	    end do
	    end subroutine
	  end subroutine
	  recursive subroutine prc(arg)
	  logical arg
	  arg = .true.
	  end subroutine
	end 
!
	module modb 
	contains 
	  recursive subroutine test
	  logical,dimension(100,100) :: a
	  do i=1,100
	    do j=1,100
	      a(i,j) = pure()
	    end do
	  end do
	  print *,a(1,1)
	  contains
	    recursive function pure()
	    logical pure
	    pure = ext()
	    end function
	  end subroutine
	  recursive function ext()
	  logical ext
  	  ext = .true.
	  end function
	end 
!
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
