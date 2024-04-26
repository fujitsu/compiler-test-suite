      module mod30
        integer(4)::ii
      end module

      module mod20
       contains
        subroutine subsub
         use mod30
          ii=ii+70
        end subroutine
      end module

      module mod21
       use mod30
       contains
        subroutine subsub
          ii=ii+700
        end subroutine
      end module

      module mod22
       contains
        subroutine subsub
         use mod30
          ii=ii+7000
        end subroutine
      end module

      module mod1
       contains
        subroutine m1sub0
         use mod20
          call subsub()
        end subroutine
        subroutine m1sub1
         use mod21
          call subsub()
        end subroutine
        subroutine m1sub2
         use mod22
          call subsub()
        end subroutine
      end module

      module mod2
        use mod30
       contains
        subroutine m2sub0(jj)
         use mod1
          ii=7
          call m1sub0()
          call m1sub1()
          call m1sub2()
          jj=ii
        end subroutine
      end module

      program main
       use mod2
        call m2sub0(jj)
        if (jj/=7777) print *,'error'
        print *,'pass'
      end program
