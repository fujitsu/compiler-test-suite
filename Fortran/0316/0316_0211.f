
      module mod03
      common /com3/mm
     
      contains
        subroutine submod()
        common /com3/n
        if (n.ne.3) then
           print *,'??? ng ???'
           stop 1
        endif
        if (mm.ne.3) then
           print *,'??? ng ???'
           stop 2
        endif
        end subroutine submod

      end

      program  modul03
      use mod03
      call submod()
      if (mm.ne.3) then
         print *,'??? ng ???'
         stop 3
      endif
      print *,'*** ok ***'
      end 
 
      block data bk
      common /com3/mm
      data mm/3/
      end
