	subroutine test1
	do i=1,10
	  call test2
	end do
	do i=1,10
	  call test3
	end do
	contains
	  subroutine test3
	  print *,' Hello '
	  end subroutine
	end
	subroutine test2
	print *,' Hello '
	end
	module moda
	contains
	  subroutine test3
	  do i=1,10
	    call test4
  	  end do
	  contains
	    subroutine test4
	    print *,' Hello '
	    end subroutine
	  end subroutine
	end module
	use moda
	call test1
	call test3
	end
