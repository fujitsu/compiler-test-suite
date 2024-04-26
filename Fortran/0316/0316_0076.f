
      integer*1 i1a,i1x,i1p,i1l
      integer*2 i2a,i2x,i2p,i2l
      integer*4 i4a,i4x,i4p,i4l
      integer*8 i8a,i8x,i8p,i8l
      parameter (i1x=z'cf',              i1p=4,i1l=4)
      parameter (i2x=z'ffcf',            i2p=4,i2l=4)
      parameter (i4x=z'ffffffcf',        i4p=4,i4l=4)
      parameter (i8x=z'ffffffffffffffcf',i8p=4,i8l=4)

      parameter(i1a=ibits(I=i1x,POS=i1p,LEN=i1l))
      parameter(i2a=ibits(i2x,LEN=i2l,POS=i2p))
      parameter(i4a=ibits(LEN=i4l,POS=i4p,I=i4x))
      parameter(i8a=ibits(i8x,i8p,i8l))

      call checki1(i1a,ibits(I=i1x,POS=i1p,LEN=i1l))
      call checki2(i2a,ibits(i2x,LEN=i2l,POS=i2p))
      call checki4(i4a,ibits(LEN=i4l,POS=i4p,I=i4x))
      call checki8(i8a,ibits(i8x,i8p,i8l))
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
