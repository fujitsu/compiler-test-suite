
      integer*1 i1x,i1y
      integer*2 i2x,i2y
      integer*4 i4x,i4y
      integer*8 i8x,i8y
      integer*1 i1a
      integer*2 i2a
      integer*4 i4a
      integer*8 i8a
      parameter (i1x= 8, i1y= 5)
      parameter (i2x= 8, i2y=-5)
      parameter (i4x=-8, i4y= 5)
      parameter (i8x=-8, i8y=-5)

      parameter(i1a=mod(i1x,i1y))
      parameter(i2a=mod(i2x,i2y))
      parameter(i4a=mod(i4x,i4y))
      parameter(i8a=mod(i8x,i8y))

      call checki1(i1a,mod(i1x,i1y))
      call checki2(i2a,mod(i2x,i2y))
      call checki4(i4a,mod(i4x,i4y))
      call checki8(i8a,mod(i8x,i8y))
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
