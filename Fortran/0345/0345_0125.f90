      module mod
      contains
        subroutine sub1(al)
          integer(4),allocatable,dimension(:),intent(in)::al
          if (.not.allocated(al)) print *,'error'
        end subroutine
        subroutine sub0()
          integer(4),allocatable,dimension(:)::al
          allocate(al(5))
          call sub1(al)
        end subroutine
      end module

      program main
       use mod
        call sub0()
        print *,'pass'
      end program
