      module mod
        integer::ii,jj
        equivalence(ii,jj)
       contains
        subroutine sub()
          ii=ii+1
        end subroutine
      end module

      program main
       use mod
        jj=99  
        call sub()
        if (ii/=100.or.jj/=100) print *,'error',ii,jj
        print *,'pass'
      end program
