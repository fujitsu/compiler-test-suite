      subroutine sub1(al)
        integer(4),allocatable,dimension(:),intent(in)::al
        if (.not.allocated(al)) print *,'error'
      end subroutine

      module mod
        integer(4),allocatable,dimension(:)::al
      contains
        subroutine sub0()
          interface
            subroutine sub1(al)
              integer(4),allocatable,dimension(:),intent(in)::al
            end subroutine
          end interface
          call sub1(al)
        end subroutine
      end module

      program main
       use mod
        allocate(al(5))
        call sub0()
         print *,'pass'
      end program
