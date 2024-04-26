      module mod
        integer(4),dimension(3),target::t
      contains
        subroutine sub(p)
          integer(4),pointer::p(:)
          p=>t
        end subroutine
      end module

      program main
       use mod
        integer(4),pointer::p(:)
        t=(/1,2,3/)
        call sub(p)
        if (any(p/=(/1,2,3/))) print *,p
        print *,'pass'
      end program
