        module moda
	common /cmn/ ppp_t
	real,private,pointer :: ppp
	real,private,target :: ppp_t
        contains
          subroutine init()
	    ppp=>ppp_t
	    ppp_t=8
          end subroutine
        end module

        use moda
        call init()
        end
