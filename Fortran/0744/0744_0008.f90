      real*8:: r1,r2,r3,r4

      r1=1.0d0
      r2=1.0d0
      r3=1.0d0
      r4=1.0d0
      call sub(r1,r2,r3,r4)
      print *,'pass'
      end

      subroutine sub(r1,r2,r3,r4)
      real*8:: r1,r2,r3,r4

      j=0

      if (r1-r2.lt.r3-r4) then
        write(6,*) "NG"
      else
        j=j+1
      endif

      if (r1-r2.gt.r3-r4) then
        write(6,*) "NG"
      else
        j=j+1
      endif

      if (r1-r2.le.r3-r4) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (r1-r2.ge.r3-r4) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (r1/=r2.or.j/=4.or.r3/=r4) then
        write(6,*) "NG"
      endif

      end
