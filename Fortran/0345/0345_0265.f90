      module mod
        integer::ii(5),jj(5)
        equivalence(ii(1),jj(1))
       contains
        subroutine sub()
          ii=ii+(/8,6,4,2,0/)
          if (any(ii/=10)) print *,'error'
        end subroutine
      end module

      program main
       use mod
        jj=(/2,4,6,8,10/)
        call sub()
        if (any(jj/=10)) print *,'error'
        print *,'pass'
      end program
