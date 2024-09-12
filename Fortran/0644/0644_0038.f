      recursive subroutine sub()
      real b
      b=3.0
      call sub2()
      contains
        subroutine sub2()
        real a
        a=2.0
        print *,b,a
        end subroutine
      end
      call sub()
      end
