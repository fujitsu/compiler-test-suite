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
      real*8 r1,r2,r3

      if (r1.gt.r2.or.r1.gt.r3) then
        write(6,*) "NG"
      else
        if (r1-r2.gt.r1-r3) write(6,*) "NG"
      endif

      end
