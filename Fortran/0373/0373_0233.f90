        module mod
          type kot
             integer*4 :: x
             integer*4 :: y
          end type kot
          type oyat
             type(kot) ko
          end type oyat
        end module mod

        program main
          use mod
          type(oyat) oya
          integer*4 :: t
          integer*4 :: a,b
         call sub(a,b)
          oya%ko%x = a;
          oya%ko%y = b;
          oya%ko%x = oya%ko%x + 1;
          oya%ko%y = oya%ko%y + 1;
          continue
          t = oya%ko%y;
          print*,t
          call foo(oya)
        end program main
        subroutine foo(oyax)
	 use mod
	 type(oyat) oyax
        end subroutine foo
        subroutine sub(a,b)
          integer*4 :: a,b
          a = 1
          b = 3
        end subroutine sub
