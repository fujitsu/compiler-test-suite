
      integer*1 i1(5),i1a(5)
      integer*2 i2(5),i2a(5)
      integer*4 i4(5),i4a(5)
      integer*8 i8(5),i8a(5)
      parameter (i1a=z'7f')
      parameter (i2a=z'7fff')
      parameter (i4a=z'7fffffff')
      parameter (i8a=z'7fffffffffffffff')

      parameter(i1=abs(i1a))
      parameter(i2=abs(i2a))
      parameter(i4=abs(i4a))
      parameter(i8=abs(i8a))

      do i=1,5
        call checki1(i1(i),abs(i1a(i)))
        call checki2(i2(i),abs(i2a(i)))
        call checki4(i4(i),abs(i4a(i)))
        call checki8(i8(i),abs(i8a(i)))
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
