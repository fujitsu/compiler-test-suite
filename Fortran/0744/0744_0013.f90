      real*8::r1,r2

      r1=0.0d0
      r2=0.0d0
      call sub(r1,r2)
      print *,'pass'
      end

      subroutine sub(r1,r2)
      real*8::r1,r2

      j=0

      if (.not.abs(r1/r2).gt.10d0) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (.not.abs(r1/r2).ge.10d0) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (.not.abs(r1/r2).lt.10d0) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (.not.abs(r1/r2).le.10d0) then
        j=j+1
      else
        write(6,*) "NG"
      endif

      if (j/=4) write(6,*) "NG"

      end subroutine