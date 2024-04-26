
      integer*1 i1x,i1y
      integer*2 i2x,i2y,i2z
      integer*4 i4x,i4y
      integer*8 i8x,i8y,i8z
      integer*1 i1a,j1a
      integer*2 i2a,j2a
      integer*4 i4a,j4a
      integer*8 i8a,j8a
      parameter (i1x=10, i1y=1)
      parameter (i2x=10, i2y=1, i2z=-10)
      parameter (i4x=10, i4y=1)
      parameter (i8x=10, i8y=1, i8z=-10)

      parameter(i1a=max(i1x,i1y))
      parameter(i2a=max(A1=i2x,A2=i2y,A3=i2z))
      parameter(i4a=max(A2=i4x,A1=i4y))
      parameter(i8a=max(i8x,A100=i8y,A2=i8z))
      parameter(j1a=min(i1x,i1y))
      parameter(j2a=min(A1=i2x,A2=i2y,A103=i2z))
      parameter(j4a=min(i4y,i4x))
      parameter(j8a=min(A2=i8y,A1=i8x,A3=i8z))

      call checki1(i1a,max(i1x,i1y))
      call checki2(i2a,max(A1=i2x,A2=i2y,A3=i2z))
      call checki4(i4a,max(A2=i4x,A1=i4y))
      call checki8(i8a,max(i8x,A100=i8y,A2=i8z))
      call checki1(j1a,min(i1x,i1y))
      call checki2(j2a,min(A1=i2x,A2=i2y,A103=i2z))
      call checki4(j4a,min(i4y,i4x))
      call checki8(j8a,min(A2=i8y,A1=i8x,A3=i8z))
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
