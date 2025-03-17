        module moda
        real,private,dimension(:),allocatable    :: iva_private
        real,dimension(:),allocatable    :: iva_public
        integer int
        contains
          subroutine init()
            allocate(iva_private(10))
            allocate(iva_public(10))
	    iva_private=1
	    iva_public=2
          end subroutine
        end module
        use moda
        call init()
        print *,iva_public
        end
