      real*4:: r1,r2,r3,r4

      r1=1.0d0
      r2=1.0d0
      r3=1.0d0
      r4=1.0d0
      call sub(r1,r2,r3,r4)
      end

      subroutine sub(r1,r2,r3,r4)
      real*4:: r1,r2,r3,r4

      j=0

      if (abs((r1-r2)/(r2-r3)).lt. &
          abs((r3-r4)/(r3-r2))) then
        print *,'ng'
      else
        j=j+1
      endif

      if (.not. (abs((r1-r2)/(r2-r3)).lt. &
                 abs((r3-r4)/(r3-r2)))) then
        j=j+1
      else
        print *,'ng'
      endif

      if (.not.(.not.(abs((r1-r2)/(r2-r3)).lt. &
                      abs((r3-r4)/(r3-r2))))) then
        print *,'ng'
      else
        j=j+1
      endif

      if (.not.(.not.(.not.(abs((r1-r2)/(r2-r3)).lt. &
                            abs((r3-r4)/(r3-r2)))))) then
        j=j+1
      else
        print *,'ng'
      endif

      if (j/=4) then
        print *,'ng'
      else
        print *,'ok'
      endif

      end
