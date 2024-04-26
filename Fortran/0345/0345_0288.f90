      module mod0
        integer::i0
        integer::j0
        equivalence(i0,j0)
        integer::i1
        integer::j1
        equivalence(i1,j1)
        integer::i2
        integer::j2
        equivalence(i2,j2)
        integer::i3
        integer::j3
        equivalence(i3,j3)
       contains
        subroutine sub0()
          j0=99
          j1=99
          j2=99
          j3=99
        end subroutine
      end module

      module mod1
       use mod0,k0=>j0,k1=>j1,k2=>j2,k3=>j3
      contains
      subroutine sub()
        call sub0()
        k0=k0+1 
        k1=k1+1 
        k2=k2+1 
        k3=k3+1 
        if (i0/=100.or.i1/=100.or.i2/=100.or.i3/=100) print*,'error',i0,i1,i2,i3
      end subroutine
      end module 

      program main
       use mod1
        call sub()
        print *,'pass'
      end program
