
      integer*1 i1x(5),i1y(5),i1p,i1m
      integer*2 i2x(5),i2y(5),i2p,i2m
      integer*4 i4x(5),i4y(5),i4p,i4m
      integer*8 i8x(5),i8y(5),i8p,i8m
      integer*1 i1a(5),j1a(5),i1b(5),j1b(5)
      integer*2 i2a(5),j2a(5),i2b(5),j2b(5)
      integer*4 i4a(5),j4a(5),i4b(5),j4b(5)
      integer*8 i8a(5),j8a(5),i8b(5),j8b(5)
      parameter (i1x=-1,i1y=2)
      parameter (i2x=-1,i2y=2)
      parameter (i4x=-1,i4y=2)
      parameter (i8x=-1,i8y=2)
      parameter (i1p=1, i1m=-1)
      parameter (i2p=2, i2m=-2)
      parameter (i4p=4, i4m=-4)
      parameter (i8p=8, i8m=-8)

      parameter(i1a=sign(i1x,i1p))
      parameter(i2a=sign(i2x,i2p))
      parameter(i4a=sign(i4x,i4p))
      parameter(i8a=sign(i8x,i8p))
      parameter(i1b=sign(i1x,i1m))
      parameter(i2b=sign(i2x,i2m))
      parameter(i4b=sign(i4x,i4m))
      parameter(i8b=sign(i8x,i8m))

      parameter(j1a=sign(i1y,i1p))
      parameter(j2a=sign(i2y,i2p))
      parameter(j4a=sign(i4y,i4p))
      parameter(j8a=sign(i8y,i8p))
      parameter(j1b=sign(i1y,i1m))
      parameter(j2b=sign(i2y,i2m))
      parameter(j4b=sign(i4y,i4m))
      parameter(j8b=sign(i8y,i8m))

      do i=1,5
        call checki1(i1a(i),sign(i1x(i),i1p))
        call checki2(i2a(i),sign(i2x(i),i2p))
        call checki4(i4a(i),sign(i4x(i),i4p))
        call checki8(i8a(i),sign(i8x(i),i8p))
        call checki1(i1b(i),sign(i1x(i),i1m))
        call checki2(i2b(i),sign(i2x(i),i2m))
        call checki4(i4b(i),sign(i4x(i),i4m))
        call checki8(i8b(i),sign(i8x(i),i8m))

        call checki1(j1a(i),sign(i1y(i),i1p))
        call checki2(j2a(i),sign(i2y(i),i2p))
        call checki4(j4a(i),sign(i4y(i),i4p))
        call checki8(j8a(i),sign(i8y(i),i8p))
        call checki1(j1b(i),sign(i1y(i),i1m))
        call checki2(j2b(i),sign(i2y(i),i2m))
        call checki4(j4b(i),sign(i4y(i),i4m))
        call checki8(j8b(i),sign(i8y(i),i8m))
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
