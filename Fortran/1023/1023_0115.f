        module m1
	integer int1
	common /cmn/ com1
        contains
        subroutine sub()
	  common /cmn2/ sub_com
	  contains
	    function fun()
	    end function
          end subroutine
        end module

        program main
        use m1
	call sub()
        stop
        end program


