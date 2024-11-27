      real*4::r1,r2,r3
      r1=1.0e+0
      r2=2.0e+0
      r3=3.0e+0
      call sub(r1,r2,r3)
      r1=0.0e+0
      r2=1.0e-1
      r3=2.0e-1
      call sub(r1,r2,r3)
      print *,'pass'
      end

      subroutine sub(r1,r2,r3)
      real*4::r1,r2,r3

      j=0

      if (r1.ge.r2.or.r2.ge.r3) then
        write(6,*) "NG"
      elseif (r3.le.r2.and.r2.le.r1) then
        write(6,*) "NG"
      endif

      if (r1.le.r2.and.r2.le.r3) then
        j=j+1
      endif

      if (r3.ge.r2.and.r2.ge.r1) then
        j=j+1
      endif

      if (j==2.and.r1.lt.r2.and.r2.lt.r3) then
        j=j+1
      endif

      if (j/=3.or.r1>=r2.or.r2>=r3.or.r1>=r3) then
        write(6,*) "NG"
      endif

      end
