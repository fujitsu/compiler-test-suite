      #define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-6)
      program main
      complex(kind = 4) :: c8a,c8b,c8c
      c8a = cmplx(1.0,2.0)
      c8b = cmplx(2.0,3.0)
      c8c = sin(sin(c8a+1.0)+cos(c8b+2.0))

      if(EQUAL_CHECK(c8c,(3.92775536,-216.790070))) then
        print *,'###       NG       ###'
      else
        print *,'###       OK       ###'
      endif
      stop
      end
