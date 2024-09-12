        module moda
        real,private,dimension(:),allocatable    :: iva
        integer,private:: int
        contains
          subroutine init()
            allocate(iva(10))
	    iva = 1.
            print *,iva
          end subroutine
        end module
        use moda
        iva=1
        print *,iva
	call init()
        end
