      real*8::r1,r2

      r1=1.0d0
      r2=0.0d0
      call sub(r1,r2)
      print *,'pass'
      end

      subroutine sub(r1,r2)
      real*8::r1,r2

      j=0

      if (abs(r1/r2).gt.1.0e-10) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (abs(r1/r2).ge.1.0e-10) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (abs(r1/r2).lt.1.0e-10) then
        write(6,*) "NG"
      else
        j=j+1
      endif

      if (abs(r1/r2).le.1.0e-10) then
        write(6,*) "NG"
      else
        j=j+1
      endif

      if (abs(r1/r2).eq.1.0e-10) then
        write(6,*) "NG"
      else
        j=j+1
      endif

      if (.not. j==5) write(6,*) "NG"

      end subroutine
