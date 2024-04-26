      module mod
        integer::ii,jj
        equivalence(ii,jj)
       contains
        subroutine sub()
          if (ii/=100) print *,'error'
        end subroutine
      end module

      program main
       use mod
        jj=100
        call sub()
        print *,'pass'
      end program
