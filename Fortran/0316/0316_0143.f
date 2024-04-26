
      integer*4,dimension(0:-1),parameter ::i4a=1
      integer*4,dimension(0:-1)           ::i4b

      parameter(i1=bit_size(I=i4a))
      parameter(i2=bit_size(i4b))

      call checki(i1,bit_size(i4a))
      call checki(i2,bit_size(i4b))

      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
