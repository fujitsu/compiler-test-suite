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
      real*8::r1,r2
      intent(in)::i

      j=0

      if (i.eq.0) then
        write(6,*) "NG"
      endif

      if (abs((r1-r2)/r2).gt.1e-10) then
        write(6,*) "NG"
      else
        j=1
      endif

      if (j/=1) write(6,*) "NG"

      end
