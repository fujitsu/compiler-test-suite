	subroutine test1(n)
	do i=1,n
	  call sub
	end do
	end
!
	subroutine test2(n)
	call inn
	contains
  	  subroutine inn
	  do i=1,n
	    call sub
	  end do
	  end subroutine
	end

	subroutine test3(n)
	call inn
	contains
  	  subroutine inn
	  do i=1,n
	    call sub
	  end do
	  end subroutine
	end

	subroutine test4(n)
	call inn
	contains
  	  subroutine inn
	  do i=1,n
	    call sub
	  end do
	  end subroutine
	end

	subroutine test5(n,ext)
	external ext
	call inn
	contains
  	  subroutine inn
	  do i=1,n
	    call ext
	  end do
	  end subroutine
	end

	subroutine test6(n)
	do i=1,n
	  call inn
	end do
	contains
  	  subroutine inn
	  write(6,*) ' Hello '
	  end subroutine
	end

	module moda
	contains

	subroutine test7(n)
	do i=1,n
	  call mod_sub1
	end do
	do i=1,n
	  call mod_sub2
	end do
	end subroutine
  	subroutine mod_sub1
	call mod_sub2
	end subroutine
  	subroutine mod_sub2
	write(6,*) ' Hello '
	end subroutine
	end module
!
	recursive subroutine sub
	write(6,*) ' Hello '
	end 
	program main
	use moda
	external sub
	call test1(2)
	call test2(2)
	call test3(2)
	call test4(2)
	call test5(2,sub)
	call test6(2)
	call test7(2)
	end
