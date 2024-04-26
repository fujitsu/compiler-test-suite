
      integer*1 i1x(5),i1y(5)
      integer*2 i2x(5),i2y(5),i2z(5)
      integer*4 i4x(5),i4y(5)
      integer*8 i8x(5),i8y(5),i8z(5)
      integer*1 i1a(5),j1a(5)
      integer*2 i2a(5),j2a(5)
      integer*4 i4a(5),j4a(5)
      integer*8 i8a(5),j8a(5)
      parameter (i1x=z'80',              i1y=z'7f')
      parameter (i2x=z'8000',            i2y=z'7fff',            i2z=0)
      parameter (i4x=z'80000000',        i4y=z'7fffffff')
      parameter (i8x=z'8000000000000000',i8y=z'7fffffffffffffff',i8z=0)

      parameter(i1a=max(i1x,i1y))
      parameter(i2a=max(A1=i2x,A2=i2y,A3=i2z))
      parameter(i4a=max(A2=i4x,A1=i4y))
      parameter(i8a=max(i8x,A100=i8y,A2=i8z))
      parameter(j1a=min(i1x,i1y))
      parameter(j2a=min(A1=i2x,A2=i2y,A103=i2z))
      parameter(j4a=min(i4y,i4x))
      parameter(j8a=min(A2=i8y,A1=i8x,A3=i8z))

      do i=1,5
        call checki1(i1a(i),max(i1x(i),i1y(i)))
        call checki2(i2a(i),max(A1=i2x(i),A2=i2y(i),A3=i2z(i)))
        call checki4(i4a(i),max(A2=i4x(i),A1=i4y(i)))
        call checki8(i8a(i),max(i8x(i),A100=i8y(i),A2=i8z(i)))
        call checki1(j1a(i),min(i1x(i),i1y(i)))
        call checki2(j2a(i),min(A1=i2x(i),A2=i2y(i),A103=i2z(i)))
        call checki4(j4a(i),min(i4y(i),i4x(i)))
        call checki8(j8a(i),min(A2=i8y(i),A1=i8x(i),A3=i8z(i)))
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
