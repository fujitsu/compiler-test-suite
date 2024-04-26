
      module mod02
      common /com2/mm
     
      contains
        subroutine submod()
        common /com2/n
        if (n.ne.3) then
           print *,'??? ng ???'
           stop 1
        endif
        call insubmod()

        contains
          subroutine insubmod()
          common /com2/kk
          if (kk.ne.3) then
             print *,'??? ng ???'
             stop 2
           endif
           end subroutine insubmod
        end subroutine submod
      end

      program  modul02
      use mod02
      call submod()
      if (mm.ne.3) then
         print *,'??? ng ???'
         stop 3
      endif
      print *,'*** ok ***'
      end 
 
      block data bk
      common /com2/mm
      data mm/3/
      end
