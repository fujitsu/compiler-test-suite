      module n
        integer,allocatable,dimension(:)::a
      end module

      module m
       use n
      contains
        subroutine s()
        end subroutine
      end module

      program main
       use m
        call s()
        print *,'pass'
      end
