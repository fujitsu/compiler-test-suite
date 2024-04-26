
      integer*1 i1x,i1y,i1a,i1b
      integer*2 i2x,i2y,i2a,i2b
      integer*4 i4x,i4y,i4a,i4b
      integer*8 i8x,i8y,i8a,i8b
      parameter (i1a=z'80')
      parameter (i2a=z'8000')
      parameter (i4a=z'80000000')
      parameter (i8a=z'8000000000000000')
      parameter (i1b=z'7f')
      parameter (i2b=z'7fff')
      parameter (i4b=z'7fffffff')
      parameter (i8b=z'7fffffffffffffff')

      parameter(i1x=not(i1a))
      parameter(i2x=not(i2a))
      parameter(i4x=not(i4a))
      parameter(i8x=not(i8a))
      parameter(i1y=not(i1b))
      parameter(i2y=not(i2b))
      parameter(i4y=not(i4b))
      parameter(i8y=not(i8b))

      call checki1(i1x,not(i1a))
      call checki2(i2x,not(i2a))
      call checki4(i4x,not(i4a))
      call checki8(i8x,not(i8a))
      call checki1(i1y,not(i1b))
      call checki2(i2y,not(i2b))
      call checki4(i4y,not(i4b))
      call checki8(i8y,not(i8b))
      print *,'*** ok ***'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine checki2(i2,i2t)
      integer*2 i2,i2t
      if (i2.ne.i2t) then
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,'??? ng ???'
        stop 4
      endif
      end
