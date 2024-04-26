      module mod0
        integer(4),dimension(3),target::t=(/4,3,2/)
      end module

      module mod
        use mod0
       contains
        subroutine set(p,n)
         integer(4)::p(n)
          p=p+t
        end subroutine
      end module

      subroutine sub(p,n)
       use mod
        integer(4)::p(n)
        if (any(p/=(/1,2,3/))) print *,p
        call set(p,n)
      end subroutine

      program main
        integer(4),pointer::p(:)
        integer(4),dimension(3),target::t=(/1,2,3/)
        p=>t
        call sub(p,3)
        if (any(p/=(/5,5,5/))) print *,p
        print *,'pass'
      end program
