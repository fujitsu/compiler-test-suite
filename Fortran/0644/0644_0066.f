        module moda
        real,private,dimension(:),allocatable    :: iva_private
        real,dimension(:),target,allocatable    :: iva_public
	real,dimension(:),pointer	:: iva_public_pointer
        integer int
        contains
          subroutine init()
            allocate(iva_private(10)); iva_private=0.0
            allocate(iva_public(10)) ; iva_public=0.0
	    iva_public_pointer => iva_public
            print *,iva_private
            print *,iva_public
	    call flush(6)
            print *,iva_private
            print *,iva_public
	    call flush(6)
          end subroutine
        end module
        use moda
        call init()
        end
