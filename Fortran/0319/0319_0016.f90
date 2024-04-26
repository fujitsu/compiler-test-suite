	  subroutine sub
	    type mmm
              sequence
	      integer,dimension(1):: mamain
            end type
	    type(mmm),pointer,dimension(:) :: amodule
	    common amodule
 	    amodule(1)%mamain(1) = amodule(1)%mamain(1) + 1
	    call check
	  end subroutine
	  subroutine check
	  type mmm
            sequence
	    integer,dimension(1):: mamain
          end type
	  type(mmm),pointer,dimension(:) :: amodule
	  common amodule
	    if( amodule(1)%mamain(1) .ne. 2 ) then
	      print *,'*** NG ***'
	      stop
	    endif
	  end subroutine
	type mmm
          sequence
	  integer,dimension(1):: mamain
        end type
	type(mmm),pointer,dimension(:)  :: amodule
	type(mmm),target, dimension(10) :: tarea
	common amodule
	amodule=>tarea
        amodule(1)%mamain(1) = 1
	call sub
	print *,"OK"
	end
