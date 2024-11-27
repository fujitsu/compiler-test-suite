      real*8::r1,r2
      r1=0.0d0
      r2=0.0d0
      call sub(r1,r2,1)
      r1=1.0d0
      r2=1.0d0
      call sub(r1,r2,-1)
      print *,'pass'
      end

      subroutine sub(r1,r2,i)
      real*8::r1,r2
      intent(in)::i

      if (i.eq.0) then
        print *,'ERROR ERROR'
      endif

      if (abs((r1-r2)/r2).gt.1e-10) goto 100
      goto 200
 100  continue
        print *,'ERROR'
        goto 300
 200  continue 
      if (.not.(r1.ge.r2).or..not.(r1.le.r2)) write(6,*) "NG"
 300  continue

      end
