	module moda 
	contains 
	  recursive subroutine test
	  logical,dimension(100,100) :: a
	  do i=1,100
	    do j=1,100
	      a(i,j) = pure()
	    end do
	  end do
	  print *,a(1,1)
	  end subroutine
	  recursive function pure()
	  logical pure
	  pure = .TRUE.
	  end function
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
	    pure = .TRUE.
	    end function
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
