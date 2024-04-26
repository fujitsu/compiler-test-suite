
      character*5,dimension(0:-1),parameter ::cha='abcde'
      character*0,                parameter ::chb=''

      parameter(i1=len(cha))
      parameter(i2=len(chb))

      call checki(i1,len(cha))
      call checki(i2,len(chb))

      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
