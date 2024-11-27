      integer*1 i1a,i1x
      integer*2 i2a
      integer*4 i4a,i4x,i4y
      integer*8 i8a,i8x
      parameter (i1a=z'80')
      parameter (i2a=z'8000')
      parameter (i4a=z'80000000')
      parameter (i8a=z'8000000000000000')

      parameter(i1x=abs(i1a))
      parameter(i4x=abs(i2a))
      parameter(i4y=abs(i4a))
      parameter(i8x=abs(i8a))

      call checki1(i1x,abs(i1a))
      call checki4(i4x,abs(i2a))
      call checki4(i4y,abs(i4a))
      call checki8(i8x,abs(i8a))
      print *,'*** ok ***'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,'??? ng ???'
        stop 1
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
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end
