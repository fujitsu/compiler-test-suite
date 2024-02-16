      complex c
      real    d
      integer i
      complex x
      call sub(c)
      d = 0.0
      i = 0
      x = (0.0,0.0)
      if (c**d /= (1.0,0.0)) then
         print *,'ng'
         stop
      endif
      if (c**i /= (1.0,0.0)) then
         print *,'ng'
         stop
      endif
      if (c**x /= (1.0,0.0)) then
         print *,'ng'
         stop
      endif
      if (c**0.0 /= (1.0,0.0)) then
         print *,'ng'
         stop
      endif
      if (c**(0.0,0.0) /= (1.0,0.0)) then
         print *,'ng'
         stop
      endif
      print *,'ok'
      end

      subroutine sub(c)
      complex c
      c = (3.0,9.0)
      end
