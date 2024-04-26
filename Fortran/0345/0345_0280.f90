      program main
        call sub()
        print *,'pass'
      end program

      module mod0
        integer::i1
        integer::j1=99
        equivalence(i1,j1)
      end module

      module mod1
       use mod0
        integer::i2
        integer::j2=99
        equivalence(i2,j2)
      end module

      subroutine sub()
       use mod1
        j1=j1+1
        j2=j2+1
        if (i1/=100.or.i2/=100) print *,'error',i1,i2
      end subroutine
