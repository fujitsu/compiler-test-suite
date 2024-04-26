
       program tcom01
       common/com/n
       call sub()
       n=n+1
       if (n.ne.22) then
         print *,n
         print *,'??? ng ???'
         stop 2
       endif 
       print *,'*** ok ***'
       
       contains 
        subroutine sub()
        n=n+1
        if (n.ne.21) then
          print *,n
          print *,'??? ng ???'
          stop 1
        endif 
        end subroutine sub
       end

       block data bk
       common/com/n
       data n/20/
       end
