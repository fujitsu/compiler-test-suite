        module moda
        real,dimension(:),allocatable    :: iva
        integer int
        contains
          subroutine init()
            print *,iva
          end subroutine
        end module
        use moda
        allocate(iva(10)); iva=0.0
        print *,iva
	call flush(6)
	call init()
        end
