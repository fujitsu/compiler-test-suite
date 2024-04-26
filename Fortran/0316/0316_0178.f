
      integer*1 i1x,i1y,i1p,i1q
      integer*2 i2x,i2y,i2p,i2q
      integer*4 i4x,i4y,i4p,i4q
      integer*8 i8x,i8y,i8p,i8q
      integer*1 i1a,i1b
      integer*2 i2a,i2b
      integer*4 i4a,i4b
      integer*8 i8a,i8b
      parameter (i1x= 8,i1y= 5)
      parameter (i2x= 8,i2y=-5)
      parameter (i4x=-8,i4y= 5)
      parameter (i8x=-8,i8y=-5)
      parameter (i1p=z'7f',               i1q=z'7f')
      parameter (i2p=z'7fff',             i2q=z'8000')
      parameter (i4p=z'80000000',         i4q=z'7fffffff')
      parameter (i8p=z'8000000000000000', i8q=z'8000000000000000')

      parameter(i1a=mod(i1x,i1y))
      parameter(i2a=mod(i2x,i2y))
      parameter(i4a=mod(i4x,i4y))
      parameter(i8a=mod(i8x,i8y))
      parameter(i1b=mod(i1p,i1q))
      parameter(i2b=mod(i2p,i2q))
      parameter(i4b=mod(i4p,i4q))
      parameter(i8b=mod(i8p,i8q))

      call checki1(i1a,mod(i1x,i1y))
      call checki2(i2a,mod(i2x,i2y))
      call checki4(i4a,mod(i4x,i4y))
      call checki8(i8a,mod(i8x,i8y))
      call checki1(i1b,mod(i1p,i1q))
      call checki2(i2b,mod(i2p,i2q))
      call checki4(i4b,mod(i4p,i4q))
      call checki8(i8b,mod(i8p,i8q))
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
