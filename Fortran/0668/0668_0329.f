      program main
      common /com/rcom1,rcom7,ccom1,ccom7
      real*8      rcom1(2),rcom7(2,2,2,2,2,2,2)
      real*8      rmsu1(2),rmsu7(2,2,2,2,2,2,2)
      complex*16  ccom1(2),ccom7(2,2,2,2,2,2,2)
      complex*16  cmsu1(2),cmsu7(2,2,2,2,2,2,2)
      do 10 i1=1,2
          rcom1(i1)=0.0
          ccom1(i1)=(0.0,0.0)
          rmsu1(i1)=0.0
          cmsu1(i1)=(0.0,0.0)
      do 10 i2=1,2
      do 10 i3=1,2
      do 10 i4=1,2
      do 10 i5=1,2
      do 10 i6=1,2
      do 10 i7=1,2
          rcom7(i1,i2,i3,i4,i5,i6,i7)=0.0
          ccom7(i1,i2,i3,i4,i5,i6,i7)=(0.0,0.0)
          rmsu7(i1,i2,i3,i4,i5,i6,i7)=0.0
          cmsu7(i1,i2,i3,i4,i5,i6,i7)=(0.0,0.0)
   10 continue
      call comchk(rcom1,rcom7,ccom1,ccom7)
      call msuchk(rmsu1,rmsu7,cmsu1,cmsu7)
      do 20 i1=1,2
          if( abs(rcom1(i1)-rmsu1(i1)) .gt. 0.00005 ) goto 30
          if( abs(ccom1(i1)-cmsu1(i1)) .gt. 0.00005 ) goto 30
      do 20 i2=1,2
      do 20 i3=1,2
      do 20 i4=1,2
      do 20 i5=1,2
      do 20 i6=1,2
      do 20 i7=1,2
       if( abs(rcom7(i1,i2,i3,i4,i5,i6,i7)-
     +     rmsu7(i1,i2,i3,i4,i5,i6,i7)) .gt. 0.00005 ) goto 30
       if( abs(ccom7(i1,i2,i3,i4,i5,i6,i7)-
     +     cmsu7(i1,i2,i3,i4,i5,i6,i7)) .gt. 0.00005 ) goto 30
   20 continue
      write(6,*) 'ok'
      goto 40
   30 write(6,*) 'ng'
   40 stop
      end
      subroutine comchk(rcom1,rcom7,ccom1,ccom7)
      real*8      rcom1(2),rcom7(2,2,2,2,2,2,2)
      complex*16  ccom1(2),ccom7(2,2,2,2,2,2,2)
      do 10 i1=1,2
       rcom1(i1)=sin(real(i1))
      do 10 i2=1,2
       ccom1(i1)=cmplx(sin(real(i2)),cos(real(i2)))
      do 10 i3=1,2
      do 10 i4=1,2
      do 10 i5=1,2
      do 10 i6=1,2
      do 10 i7=1,2
       ccom7(i1,i2,i3,i4,i5,i6,i7)=cmplx(sin(real(i7)))
       rcom7(i1,i2,i3,i4,i5,i6,i7)=ccom7(i1,i2,i3,i4,i5,i6,i7)
   10 continue
      return
      end
      subroutine msuchk(rmsu1,rmsu7,cmsu1,cmsu7)
      real*8      rmsu1(2),rmsu7(2,2,2,2,2,2,2)
      complex*16  cmsu1(2),cmsu7(2,2,2,2,2,2,2)
      do 10 i1=1,2
       rmsu1(i1)=sin(real(i1))
      do 10 i2=1,2
       cmsu1(i1)=cmplx(sin(real(i2)),cos(real(i2)))
      do 10 i3=1,2
      do 10 i4=1,2
      do 10 i5=1,2
      do 10 i6=1,2
      do 10 i7=1,2
       cmsu7(i1,i2,i3,i4,i5,i6,i7)=cmplx(sin(real(i7)))
       rmsu7(i1,i2,i3,i4,i5,i6,i7)=cmsu7(i1,i2,i3,i4,i5,i6,i7)
   10 continue
      return
      end
