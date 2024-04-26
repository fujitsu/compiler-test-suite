        module moda
        complex*8,allocatable,dimension(:,:)::alo
	contains
	  subroutine init
          allocate(alo(2,1))
	  end subroutine 
        end module
        program main
        use moda
	call init
        alo = (1,2)
        print *,sum(alo)
        end
