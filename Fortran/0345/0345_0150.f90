      module n
        integer,allocatable,dimension(:)::a
      end module

      module m
      contains
        subroutine s()
       use n
        end subroutine
      end module

      program main
       use m
        call s()
        print *,'pass'
      end
