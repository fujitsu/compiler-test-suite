
       program tcom02
       common/com/n
       equivalence(n,i)
       call sub()
       i=i+1
       if (i.ne.22) then
         print *,i
         print *,'??? ng ???'
         stop 2
       endif 
       print *,'*** ok ***'
       
       contains 
        subroutine sub()
        i=i+1
        if (i.ne.21) then
          print *,i
          print *,'??? ng ???'
          stop 1
        endif 
        end subroutine sub
       end

       block data bk
       common/com/n
       data n/20/
       end
