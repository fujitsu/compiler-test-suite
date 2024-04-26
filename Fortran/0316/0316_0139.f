
      integer*1 i1,j1,i1a(5),i1b(5)
      integer*2 i2,j2,i2a(5),i2b(5)
      integer*4 i4,j4,i4a(5),i4b(5)
      integer*8 i8,j8,i8a(5),i8b(5)
      parameter (i1a=(/0,1,2,3,4/))
      parameter (i2a=0)
      parameter (i4a=(/-1,-2,-3,-4,-5/))
      parameter (i8a=100000000000)

      parameter(i1=bit_size(i1a))
      parameter(i2=bit_size(i2a))
      parameter(i4=bit_size(i4a))
      parameter(i8=bit_size(i8a))
      parameter(j1=bit_size(i1b))
      parameter(j2=bit_size(i2b))
      parameter(j4=bit_size(i4b))
      parameter(j8=bit_size(i8b))

      call checki1(i1,bit_size(i1a))
      call checki2(i2,bit_size(i2a))
      call checki4(i4,bit_size(i4a))
      call checki8(i8,bit_size(i8a))
      call checki1(j1,bit_size(i1b))
      call checki2(j2,bit_size(i2b))
      call checki4(j4,bit_size(i4b))
      call checki8(j8,bit_size(i8b))
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
