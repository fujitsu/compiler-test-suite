      program main
        call sub()
        print *,'pass'
      end program

      module mod0
        integer::i0
        integer::j0=99
        equivalence(i0,j0)
       contains
        subroutine sub0(k0)
          k0=k0+1
        end subroutine
      end module

      module mod1
        integer::i1
        integer::j1=99
        equivalence(i1,j1)
       contains
        subroutine sub1(k1)
          k1=k1+1
        end subroutine
      end module

      module mod2
        integer::i2
        integer::j2=99
        equivalence(i2,j2)
       contains
        subroutine sub2(k2)
          k2=k2+1
        end subroutine
      end module

      module mod3
        integer::i3
        integer::j3=99
        equivalence(i3,j3)
       contains
        subroutine sub3(k3)
          k3=k3+1
        end subroutine
      end module

      subroutine sub()
       use mod0,k0=>j0
       use mod1,k1=>j1
       use mod2,k2=>j2
       use mod3,k3=>j3
        call sub0(k0)
        call sub1(k1)
        call sub2(k2)
        call sub3(k3)
        if (i0/=100.or.i1/=100.or.i2/=100.or.i3/=100) print*,'error',i0,i1,i2,i3
      end subroutine
