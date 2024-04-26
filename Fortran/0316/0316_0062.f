
       interface
         subroutine sub(p,p2,p3)
          integer,pointer,optional ::p,p2,p3
         end subroutine sub
         subroutine sub2(p,p2,p3)
          integer,pointer,optional ::p,p2,p3
         end subroutine sub2
       end interface
       integer,pointer ::p,p2,p3
       integer,target  ::t,t2
       data t /100/
       data t2/200/

       p=>t
       call sub(p,p2,p3)
       if (p.ne.p2) then
         print *,'??? ng ???'
         stop 1
       endif

       p=>t2
       call sub2(p,p2,p3)
       if (p.ne.p3) then
         print *,'??? ng ???'
         stop 2
       endif

       print *,'*** ok ***'
       end

       subroutine sub(p,p2,p3)
       integer,pointer,optional ::p,p2,p3
       p2=>p
       return
       entry sub2(p,p2,p3)
       p3=>p
       end
