      module mod
      contains
        subroutine sub(al)
          integer(4),allocatable,dimension(:),intent(in)::al
          if (.not.allocated(al)) print *,'error'
        end subroutine
      end module

      program main
       use mod
        integer(4),allocatable,dimension(:)::al
        allocate(al(5))
        call sub(al)
        print *,'pass'
      end program
