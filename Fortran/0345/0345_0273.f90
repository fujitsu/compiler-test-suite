      module mod0
        integer::ii,jj
        equivalence(ii,jj)
      end module

      module mod1
       use mod0
       contains
        subroutine sub()
          jj=jj+1
          if (ii/=100) print *,'error',ii,jj
        end subroutine
      end module

      program main
       use mod1
        jj=99  
        call sub()
        print *,'pass'
      end program
