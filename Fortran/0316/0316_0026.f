       program tcom03
       common/com/p1,p2
       integer,pointer ::p1,p2
       integer,target  ::t1,t2
       data t1,t2/10,20/

       p1=>t1
       p2=>t2
       if (p1.ne.10 .or. p2.ne.20) then
         print *,p1,p2
         print *,'??? ng ???'
         stop 1
       endif 
       print *,'*** ok ***'
       
       end
