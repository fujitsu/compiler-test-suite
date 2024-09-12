      program main
      common //a1, b1
      equivalence (a1, a2),(b1, b2)

      call sub()
      contains

       subroutine sub
       common x, y
       x  = 1.0
       a2 = 2.0
       x  = x*2.0
       y  = 2.0
       t2 = b2
       y  = y*2.0
       if (a2.ne.4.0) print *,'  1: *** ng ***',x, a2
       if (t2.ne.2.0) print *,'  2: *** ng ***',t2, b2
       print *,' PASS '
       end subroutine
      end
