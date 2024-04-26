
      integer*1 i1(2),i1a(2),i1z,i1x
      integer*2 i2(2),i2a(2),i2z,i2x
      integer*4 i4(2),i4a(2),i4z,i4x
      integer*8 i8(2),i8a(2),i8z,i8x
      parameter (i1z=z'80',              i1x=z'7f')
      parameter (i2z=z'8000',            i2x=z'7fff')
      parameter (i4z=z'80000000',        i4x=z'7fffffff')
      parameter (i8z=z'8000000000000000',i8x=z'7fffffffffffffff')
      parameter (i1a=(/i1z,i1x/))
      parameter (i2a=(/i2z,i2x/))
      parameter (i4a=(/i4z,i4x/))
      parameter (i8a=(/i8z,i8x/))

      parameter(i1=not(i1a))
      parameter(i2=not(i2a))
      parameter(i4=not(i4a))
      parameter(i8=not(i8a))

      do i=1,2
        call checki1(i1(i),not(i1a(i)))
        call checki2(i2(i),not(i2a(i)))
        call checki4(i4(i),not(i4a(i)))
        call checki8(i8(i),not(i8a(i)))
      enddo
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
