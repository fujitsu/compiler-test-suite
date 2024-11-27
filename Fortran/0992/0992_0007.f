           module mod
	    contains
	    subroutine mod1()
	     entry ent1()
	     entry ent2()
	    end subroutine
	   end module

	   program main
	    use mod
	    interface int1
	     function fun1()
	     end function
	     module procedure ent1
	    end interface
	    contains
	     subroutine sub
	      interface int1
	       function fun2()
	       end function 
	      end interface
	     end subroutine
	   end
