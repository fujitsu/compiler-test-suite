
      integer*1 i1a,   i1x,   i1p(3),i1l(3)
      integer*2 i2a(3),i2x(3),i2p,   i2l(3)
      integer*4 i4a(3),i4x,   i4p,   i4l
      integer*8 i8a(3),i8x(3),i8p(3),i8l
      parameter (i1x=z'01',              i1p=4,i1l=4)
      parameter (i2x=z'0123',            i2p=4,i2l=4)
      parameter (i4x=z'01234566',        i4p=4,i4l=4)
      parameter (i8x=z'0123456789abcdef',i8p=4,i8l=4)

      parameter(i1a=ibits(i1x,i2p,i4l))
      parameter(i2a=ibits(i2x,i4p,i8l))
      parameter(i4a=ibits(i4x,i8p,i2l))
      parameter(i8a=ibits(i8x,i1p,i1l))

      call checki1(i1a,ibits(i1x,i2p,i4l))
      do i=1,3
        call checki2(i2a(i),ibits(i2x(i),i2p,i4l))
        call checki4(i4a(i),ibits(i4x,i8p(i),i2l(i)))
        call checki8(i8a(i),ibits(i8x(i),i1p(i),i1l(i)))
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
