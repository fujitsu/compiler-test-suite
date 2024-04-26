             module mod
              real a
              contains
              subroutine sub
                real x(10), y(10), z(10)
                do i=1,10
                  x(i) = i* 1
                  y(i) = i *2
                  z(i) = i *3
                end  do
                do i=1,10
                  x(i) = x(i) * y(i) + z(i)
                end  do
                print *,x
              end subroutine sub
             end module mod
             use mod
             a=1
             call sub
             print *,a
             end
