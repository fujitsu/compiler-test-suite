      real*8::r1,r2
      r1=0.0d0
      r2=0.0d0
      call sub(r1,r2,1)
      r1=1.0d0
      r2=1.0d0
      call sub(r1,r2,2)
      print *,'pass'
      end

      subroutine sub(r1,r2,i)
      real*8 r1,r2

      if (i.eq.0) then
        write(6,*) "NG"
      endif

      if (.not. (abs((r1-r2)/(r2+1.0)).lt.1e-10)) then
        write(6,*) "NG"
      else
        if (r1.lt.r2) then
          write(6,*) "NG"
        endif
      endif

      end
