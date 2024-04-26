
       interface
         subroutine sub(p,p2)
          integer,pointer,optional ::p,p2
         end subroutine sub
       end interface
       integer,pointer ::p,p2
       integer,target  ::t
       data t/100/
       p=>t
       
       call sub(p,p2)
       if (p.ne.p2) then
         print *,'??? ng ???'
       else
         print *,'*** ok ***'
       endif

       end

       subroutine sub(p,p2)
       integer,pointer,optional ::p,p2
       p2=>p
       end
