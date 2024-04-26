
      integer*1 i1(10),i1a(10)
      integer*2 i2(10),i2a(10)
      integer*4 i4(10),i4a(10)
      integer*8 i8(10),i8a(10)
      parameter (i1a=(/1,2,3,4,5,6,7,8,9,10/))
      parameter (i2a=(/1,2,3,4,5,6,7,8,9,10/))
      parameter (i4a=(/1,2,3,4,5,6,7,8,9,10/))
      parameter (i8a=(/1,2,3,4,5,6,7,8,9,10/))

      parameter(i1=abs((/1,2,3,4,5,6,7,8,9,10/)))
      parameter(i2=abs((/1,2,3,4,5,6,7,8,9,10/)))
      parameter(i4=abs((/1,2,3,4,5,6,7,8,9,10/)))
      parameter(i8=abs((/1,2,3,4,5,6,7,8,9,10/)))

      do i=1,10
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
