
      integer*1 i1x,i1y,i1z
      integer*2 i2x,i2y
      integer*4 i4x,i4y
      integer*8 i8x,i8y
      integer*1 i1a,i1b
      integer*2 i2a,i2b
      integer*4 i4a,i4b
      integer*8 i8a,i8b
      parameter (i1x=z'ff',              i1y=1, i1z=32)
      parameter (i2x=z'ffff',            i2y=1)
      parameter (i4x=z'ffffffff',        i4y=1)
      parameter (i8x=z'ffffffffffffffff',i8y=1)

      parameter(i1a=ibclr(I=i1x,POS=i1y))
      parameter(i2a=ibclr(i2x,POS=i2y))
      parameter(i4a=ibclr(POS=i4y,I=i4x))
      parameter(i8a=ibclr(i8x,i8y))
      parameter(i1b=ibclr(i1x,i8y))
      parameter(i2b=ibclr(i2x,i4y))
      parameter(i4b=ibclr(i4x,i2y))
      parameter(i8b=ibclr(i8x,i1z))

      call checki1(i1a,ibclr(I=i1x,POS=i1y))
      call checki2(i2a,ibclr(i2x,POS=i2y))
      call checki4(i4a,ibclr(POS=i4y,I=i4x))
      call checki8(i8a,ibclr(i8x,i8y))
      call checki1(i1b,ibclr(i1x,i8y))
      call checki2(i2b,ibclr(i2x,i4y))
      call checki4(i4b,ibclr(i4x,i2y))
      call checki8(i8b,ibclr(i8x,i1z))
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
