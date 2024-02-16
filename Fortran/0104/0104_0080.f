      complex c
      real    d
      integer i
      complex x
      call sub(c)
      d = 1.0
      i = 1
      x = (1.0,0.0)
      if (c**d /= (4.0,3.0)) then
         print *,'ng'
         stop
      endif
      if (c**i /= (4.0,3.0)) then
         print *,'ng'
         stop
      endif
      if (c**x /= (4.0,3.0)) then
         print *,'ng'
         stop
      endif
      if (c**1.0 /= (4.0,3.0)) then
         print *,'ng'
         stop
      endif
      if (c**(1.0,0.0) /= (4.0,3.0)) then
         print *,'ng'
         stop
      endif
      print *,'ok'
      end

      subroutine sub(c)
      complex c
      c = (4.0,3.0)
      end
