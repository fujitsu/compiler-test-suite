
      integer*4,dimension(0:-1),parameter ::i4a=1
      integer*4,dimension(0:-1)           ::i4b
      character*0, parameter ::cha='a'
      character*0            ::chb

      parameter(i1=kind(x=i4a))
      parameter(i2=kind(cha))

      parameter(j1=kind(x=i4b))
      parameter(j2=kind(chb))

      call checki(i1,kind(i4a))
      call checki(i2,kind(cha))

      call checki(j1,kind(i4b))
      call checki(j2,kind(chb))
      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
