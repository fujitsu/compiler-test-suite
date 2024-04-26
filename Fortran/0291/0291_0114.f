       common/com/p1,p2
       integer,pointer ::p1,p2
       integer,target  ::t1,t2
       data t1,t2/10,20/
       p1=>t1
       p2=>t2
       call sub
       if (t1.ne.11 .or. t2.ne.21) then
         print *,p1,p2
         print *,'??? ng ???'
         stop 1
       endif 
       print *,'*** ok ***'
       end
       subroutine sub
       common/com/p1,p2
       integer,pointer ::p1,p2
       p1 = p1 + 1
       p2 = p2 + 1
       end
