
      integer*1 i1x1,i1p1,i1x2,i1p2,                    i1y,i1q
      integer*2 i2x1,i2p1,i2x2,i2p2,                    i2y,i2q
      integer*4 i4x1,i4p1,i4x2,i4p2,                    i4y,i4q
      integer*8 i8x1,i8p1,i8x2,i8p2,i8x3,i8p3,i8x4,i8p4,i8y,i8q
      integer*8 i8x5,i8p5
 
      integer*1 i1a,i1b,            i1z
      integer*2 i2a,i2b,            i2z
      integer*4 i4a,i4b,            i4z
      integer*8 i8a,i8b,i8c,i8d,i8e,i8z
      parameter (i1x1= 8,i1p1= 5)
      parameter (i1x2= 1,i1p2= 1)
      parameter (i2x1= 8,i2p1=-5)
      parameter (i2x2= 1,i2p2=-1)
      parameter (i4x1=-8,i4p1= 5)
      parameter (i4x2=-8,i4p2=-5)
      parameter (i8x1= 8,i8p1= 5)
      parameter (i8x2= 8,i8p2=-5)
      parameter (i8x3=-8,i8p3= 5)
      parameter (i8x4=-8,i8p4=-5)
      parameter (i8x5=-1,i8p5=-1)
      parameter (i1y=z'7f',               i1q=z'7f')
      parameter (i2y=z'7fff',             i2q=z'8000')
      parameter (i4y=z'80000000',         i4q=z'7fffffff')
      parameter (i8y=z'8000000000000000', i8q=z'8000000000000000')

      parameter(i1a=modulo(i1x1,i1p1))
      parameter(i1b=modulo(i1x2,i1p2))
      parameter(i2a=modulo(i2x1,i2p1))
      parameter(i2b=modulo(i2x2,i2p2))
      parameter(i4a=modulo(i4x1,i4p1))
      parameter(i4b=modulo(i4x2,i4p2))
      parameter(i8a=modulo(i8x1,i8p1))
      parameter(i8b=modulo(i8x2,i8p2))
      parameter(i8c=modulo(i8x3,i8p3))
      parameter(i8d=modulo(i8x4,i8p4))
      parameter(i8e=modulo(i8x5,i8p5))
      parameter(i1z=modulo(i1y, i1q))
      parameter(i2z=modulo(i2y, i2q))
      parameter(i4z=modulo(i4y, i4q))
      parameter(i8z=modulo(i8y, i8q))

      call checki1(i1a,modulo(i1x1,i1p1))
      call checki1(i1b,modulo(i1x2,i1p2))
      call checki2(i2a,modulo(i2x1,i2p1))
      call checki2(i2b,modulo(i2x2,i2p2))
      call checki4(i4a,modulo(i4x1,i4p1))
      call checki4(i4b,modulo(i4x2,i4p2))
      call checki8(i8a,modulo(i8x1,i8p1))
      call checki8(i8b,modulo(i8x2,i8p2))
      call checki8(i8c,modulo(i8x3,i8p3))
      call checki8(i8d,modulo(i8x4,i8p4))
      call checki8(i8e,modulo(i8x5,i8p5))
      call checki1(i1z,modulo(i1y, i1q))
      call checki2(i2z,modulo(i2y, i2q))
      call checki4(i4z,modulo(i4y, i4q))
      call checki8(i8z,modulo(i8y, i8q))
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
