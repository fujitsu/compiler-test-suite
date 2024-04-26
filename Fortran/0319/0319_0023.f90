	module moda
	type mmm
	  integer,dimension(1):: mamain
        end type
	type(mmm),allocatable,dimension(:) :: amodule
	contains
	  subroutine sub
 	    amodule(1)%mamain(1) = amodule(1)%mamain(1) + 1
	    call check
	  end subroutine
	  subroutine check
	    if( amodule(1)%mamain(1) .ne. 2 ) then
	      print *,'*** NG ***'
	      stop
	    endif
	  end subroutine
	end module
	use moda
	allocate(amodule(10))
        amodule(1)%mamain(1) = 1
	call sub
	print *,"OK"
	end
