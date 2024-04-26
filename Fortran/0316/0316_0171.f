
      integer*1 i1,j1,i1x,i1y
      integer*2 i2,j2,i2x,i2y
      integer*4 i4,j4,i4x,i4y
      integer*8 i8,j8,i8x,i8y
      parameter (i1x=10, i1y=1)
      parameter (i2x=10, i2y=1)
      parameter (i4x=10, i4y=1)
      parameter (i8x=10, i8y=1)

      parameter(i1=dim(x=i1x,y=i1y))
      parameter(i2=dim(x=i2x,y=i2y))
      parameter(i4=dim(i4x,i4y))
      parameter(i8=dim(i8x,i8y))
      parameter(j1=dim(x=i1y,y=i1x))
      parameter(j2=dim(x=i2y,y=i2x))
      parameter(j4=dim(i4y,i4x))
      parameter(j8=dim(i8y,i8x))

      call checki1(i1,dim(x=i1x,y=i1y))
      call checki2(i2,dim(x=i2x,y=i2y))
      call checki4(i4,dim(i4x,i4y))
      call checki8(i8,dim(i8x,i8y))
      call checki1(j1,dim(x=i1y,y=i1x))
      call checki2(j2,dim(x=i2y,y=i2x))
      call checki4(j4,dim(i4y,i4x))
      call checki8(j8,dim(i8y,i8x))
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
