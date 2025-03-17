	module moda
	integer,private,pointer        :: ivp
	integer,private,target         :: ivt
	contains 
	  subroutine init()
	    ivp => ivt
	    ivt = 3
	    print *,ivp,ivt
	  end subroutine 
	end module

	use moda
	call init()
	end
