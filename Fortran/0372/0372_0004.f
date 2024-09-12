      program main
      common //a1, b1
      equivalence (a1, a2),(b1,b2)

      call sub()
      contains

        subroutine sub
        common x, y
        x  = 1.0
        a2 = 2.0
        x  = x*2.0
        y  = 2.0
        t  = b2
        y  = y*2.0
        print *, '***** program ******'
        if (a2.eq.4.0) then
              print *, '   1: ***  ok  *** (x, a2 = ', x, a2, ')'
        else
              print *, '   1: ***  ng  *** (x, a2 = ', x, a2, ')'
        endif
        if (t.eq.2.0) then
              print *, '   2: ***  ok  *** (t, b2 = ', t, b2, ')'
        else
              print *, '   2: ***  ng  *** (t, b2 = ', t, b2, ')'
        endif
        end subroutine
      end
