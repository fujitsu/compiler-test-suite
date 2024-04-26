
       interface
         function fun(p)
          integer,pointer ::fun
          integer,pointer,optional ::p
         end function fun
       end interface
       integer,pointer ::p,fp
       integer,target  ::t
       data t/100/
       p=>t
       
       fp=>fun(p)
       print *,fp
       if (fp.ne.p) then
         print *,'??? ng ???'
       else
         print *,'*** ok ***'
       endif

       end

       function fun(p)
       integer,pointer ::fun
       integer,pointer,optional ::p
       fun=>p
       end
