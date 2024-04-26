
      module mod01
      data i,j /1,2/
      
        contains
        subroutine submod()
        if (i.ne.1 .or. j.ne.2) then
          print *,'??? ng ???'
          stop 1
        endif
        end subroutine submod
      end

      use mod01
      call submod()
      if (i.ne.1 .or. j.ne.2) then
        print *,'??? ng ???'
        stop 2
      endif
      print *,'*** ok ***'
      end 
