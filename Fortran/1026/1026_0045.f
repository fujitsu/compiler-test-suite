        module m1
	integer int1
	common /cmn/ com1
        contains
          recursive subroutine sub()
	  common /cmn2/ sub_com
	  int1 = 11
	  com1 = 11
	  sub_com = 11
	  contains
	    function fun()
	    fun = 22
	    int1 = 22
	    com1 = 22
	    sub_com = 22
	    end function
          end subroutine
        end module


        program main
        use m1
        stop
        end program


