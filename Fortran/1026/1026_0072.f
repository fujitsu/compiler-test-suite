        module moda
	common /cmn/ ppp
	real,pointer :: ppp
	real,target :: ppp_t
        real,private,dimension(:),allocatable    :: iva_private
        real,dimension(:),allocatable    :: iva_public
        integer int
        contains
          subroutine init()
            allocate(iva_private(10))
            allocate(iva_public(10))
	    ppp=>ppp_t
	    iva_private=1
	    iva_public=1
            print *,iva_private
            print *,iva_public
          end subroutine
        end module

        use moda
        call init()
        end
