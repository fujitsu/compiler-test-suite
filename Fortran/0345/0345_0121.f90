      subroutine sub(al)
        integer(4),allocatable,dimension(:),intent(in)::al
        if (.not.allocated(al)) print *,'error'
      end subroutine

      program main
        integer(4),allocatable,dimension(:)::al
        interface
          subroutine sub(al)
            integer(4),allocatable,dimension(:),intent(in)::al
          end subroutine
        end interface
        allocate(al(5))
        call sub(al)
        print *,'pass'
      end program
