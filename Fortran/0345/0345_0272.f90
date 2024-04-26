      module mod
        integer::ii,jj
        equivalence(ii,jj)
      end module

      subroutine sub()
       use mod
        jj=jj+1
        if (ii/=100) print *,'error',ii,jj
      end subroutine

      program main
       use mod
        jj=99  
        call sub()
        print *,'pass'
      end program
