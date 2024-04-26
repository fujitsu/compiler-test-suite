
      module mod04
      common //ii
     
      contains
        subroutine submod()
        common //i,j
        data i,j /1,2/
        if (i.ne.1 .or. ii.ne.1) then
           print *,'??? ng ???'
           stop 1
        endif
        if (j.ne.2) then
           print *,'??? ng ???'
           stop 2
        endif
       
        end subroutine submod

      end

      program  modul04
      use mod04
      call submod()
      if (ii.ne.1) then
         print *,'??? ng ???'
         stop 3
      endif
      print *,'*** ok ***'
      end 
