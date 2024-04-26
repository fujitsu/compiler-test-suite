      program main
      complex(kind = 4) :: c8a,c8b,c8c
      c8a = cmplx(1.0,2.0)
      c8b = cmplx(2.0,3.0)
      c8c = sin(sin(c8a+1.0)+cos(c8b+2.0))

      if (c8c.eq.(3.92775536,-216.790070)) then
        print *,'###       OK       ###'
      else
        print *,'###       NG       ###'
      endif
      stop
      end
