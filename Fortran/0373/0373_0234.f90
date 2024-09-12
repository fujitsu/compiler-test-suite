        module mod
          type dt
             integer*4 :: z1,z2
          end type dt
          type ct
             type(dt) d
          end type ct
          type bt 
             type(ct) c
          end type bt
          type at
             type(bt) b
          end type at
        end module mod

        program main
          use mod
          type(at) a
          a%b%c%d%z1 = 1
          a%b%c%d%z2 = 2
          call sub(a)
        end program main

        subroutine sub(a)
          use mod
          type(at) a
          print*,a
        end subroutine sub
