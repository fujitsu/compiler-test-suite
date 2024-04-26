      module m
        integer,allocatable,dimension(:)::a
      contains
        subroutine s()
        end subroutine
      end module

      program main
       use m
      call s()
       print *,'pass'
      end
