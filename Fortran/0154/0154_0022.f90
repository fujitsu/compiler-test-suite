      real*8::r1,r2
      r1=0.0d0
      r2=0.0d0
      call sub(r1,r2)
      print *,'pass'
      end

      subroutine sub(r1,r2)
      real*8::r1,r2

     write(1,*) abs((r1-r2)/r2)
      end
