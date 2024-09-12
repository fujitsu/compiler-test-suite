      real*8::r1,r2
      r1=1.0d0
      r2=1.0d0
      call sub(r1,r2)
      end

      subroutine sub(r1,r2)
      real*8::r1,r2

      if (abs((r1-r2)/r2).gt.1e-10) then
        j=0
      else
        j=1
      endif

      if (j/=1) then
        print *,'ng'
      else
        print *,'ok'
      endif

      end
