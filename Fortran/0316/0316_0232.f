
       character*2  sourceCH(3)
       integer*8    sourceI8(5),i8a,i8b,i8c,i8d,i8e
       complex*8    sourceC8(5)
       real*8       sourceR8(10)
       logical*1    sourceL1
       integer*2    sourceI2(2)
       character*5  moldCH,   rcCH,     rrCH
       integer*4    moldI4,   rcI4(7),  rrI4(7)
       complex*16   moldC16,  rcC16(5), rrC16(5)
       integer*1    moldI1,   rcI1,     rrI1
       integer*2    moldI2,   rcI2,     rrI2
       integer*8    moldI8,   rcI8(0),  rrI8(0)
       real*4       moldR4(1),rcR4(10),rrR4(10)
       integer*8    sizeI8

       parameter (i8a=z'ffffffff00000000',i8b=z'0000000180000000',
     +            i8c=z'00000002fffffffe',i8d=z'7fffffff00000003',
     +            i8e=z'0000000000000005')
       parameter (sourceCH=(/'ab','xy','nm'/))
       parameter (sourceI8=(/i8a,i8b,i8c,i8d,i8e/))
       parameter (sourceC8=(/(1.0,1.0),(2.0,2.0),(3.0,3.0),
     +                       (4.0,4.0),(5.0,5.0)/))
       parameter (sourceR8=2.0d+0)
       parameter (sourceL1=.true.)
       parameter (sourceI2=2)
       parameter (moldCH='A',moldI4=0, moldR4=0.0,moldC16=(0.0,0.0),
     +            moldI1=0,moldI2=0,moldI8=0)
       parameter (sizeI8=0)
       parameter (rcCH=transfer(sourceCH,moldCH))
       parameter (rcI4=transfer(sourceI8,moldI4,7))
       parameter (rcR4=transfer(sourceC8,moldR4))
       parameter (rcC16=transfer(sourceR8,moldC16,i8e))
       parameter (rcI1=transfer(sourceL1,moldI1))
       parameter (rcI2=transfer(sourceI2,moldI2))
       parameter (rcI8=transfer(sourceI2,moldI8,sizeI8))

       rrCH=transfer(sourceCH,moldCH)
       rrI4=transfer(sourceI8,moldI4,7)
       rrR4=transfer(sourceC8,moldR4)
       rrC16=transfer(sourceR8,moldC16,i8e)
       rrI1=transfer(sourceL1,moldI1)
       rrI2=transfer(sourceI2,moldI2)
       rrI8=transfer(sourceI2,moldI8,sizeI8)

      call checkch(rcCH,rrCH)
      call checki1(rcI1,rrI1)
      call checki2(rcI2,rrI2)

      do i=1,7
        call checki4(rcI4(i),rrI4(i))
      enddo
      do i=1,10
        call checkr4(rcR4(i),rrR4(i))
      enddo
      do i=1,5
        call checkc16(rcC16(i),rrC16(i))
      enddo

      print *,'*** ok ***'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,i1,i1t
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine checki2(i2,i2t)
      integer*2 i2,i2t
      if (i2.ne.i2t) then
        print *,i2,i2t
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end

      subroutine checkr8(r8,r8t)
      real*8 r8,r8t
      if ((dabs(r8-r8t)/r8t).gt.1.0d-14) then
        print *,r8,r8t
        print *,'??? ng ???'
        stop 5
      endif
      end

      subroutine checkr4(r4,r4t)
      real*4 r4,r4t
      if ((abs(r4-r4t)/r4t).gt.1.0e-5) then
        print *,r4,r4t
        print *,'??? ng ???'
        stop 6
      endif
      end

      subroutine checkc8(c8,c8t)
      complex*8 c8,c8t
      if (((abs(real(c8)-real(c8t))/real(c8t)).gt.1.0e-5) .or.
     +    ((abs(imag(c8)-imag(c8t))/imag(c8t)).gt.1.0e-5)) then
        print *,c8,c8t
        print *,'??? ng ???'
        stop 7
      endif
      end

      subroutine checkc16(c16,c16t)
      complex*16 c16,c16t
      if (((abs(real(c16)-real(c16t))/real(c16t)).gt.1.0d-14) .or.
     +    ((abs(imag(c16)-imag(c16t))/imag(c16t)).gt.1.0d-14)) then
        print *,c16,c16t
        print *,'??? ng ???'
        stop 8
      endif
      end

      subroutine checkch(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,ch,cht
        print *,'??? ng ???'
        stop 9
      endif
      end
