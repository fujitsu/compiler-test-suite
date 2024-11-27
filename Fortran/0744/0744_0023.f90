      real*8::r1,r2,r3
      r1=0.0d0
      r2=0.0d0
      r3=0.0d0
      call sub(r1,r2,r3)
      r1=1.0d0
      r2=1.0d0
      r3=1.0d0
      call sub(r1,r2,r3)
      print *,'pass'
      end

      subroutine sub(r1,r2,r3)
      real*8::r1,r2,r3

      j=0

      if (.not.(.not.(abs((r1-r2)/r3).gt.1e-10.or. &
                      abs((r2-r1)/r3).gt.1e-10))) then
        print *,abs((r1-r2)/r2)
        print *,abs((r1-r3)/r3)
        write(6,*) "NG"
      else
        j=1
      endif

      if (j/=1.or.r1-r2.lt.0.0d0) write(6,*) "NG"

      end
