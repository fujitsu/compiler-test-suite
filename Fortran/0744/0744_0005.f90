      real*8::r1,r2
      r1=0.0d0
      r2=0.0d0
      call sub(r1,r2)
      r1=1.0d0
      r2=1.0d0
      call sub(r1,r2)
      print *,'pass'
      end

      subroutine sub(r1,r2)
      real*8 r1,r2

      if (.not. (abs((r1-r2)/r2).gt.1e-10)) then
        if (.not.(r1.le.r2)) then
          write(6,*) "NG"
        endif
        if (.not.(r1.ge.r2)) then
          write(6,*) "NG"
        endif
      else
        print *,abs((r1-r2)/r2)
        write(6,*) "NG"
      endif

      end
