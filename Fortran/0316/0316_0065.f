
       interface
         function fun()
          integer,dimension(2) ::fun
         end function fun
         function fun2()
          integer,dimension(2) ::fun2
         end function fun2
       end interface

       integer,dimension(2) ::f,f2
      
       f=fun()
       if (f(1).ne.10 .or. f(2).ne.10) then
         print *,'??? ng ???'
         stop 3
       endif

       f2=fun2()
       if (f2(1).ne.20 .or. f2(2).ne.20) then
         print *,'??? ng ???'
         stop 4
       endif
       print *,'*** ok ***'
       end
 
       function fun()
       integer,dimension(2):: fun,fun2
       fun=10
       if (fun(1).ne.fun2(1) .or. fun(2).ne.fun2(2)) then
         print *,'??? ng ???'
         stop 1
       endif
       return
       entry fun2()
       fun2=20
       if (fun(1).ne.fun2(1) .or. fun(2).ne.fun2(2)) then
         print *,'??? ng ???'
         stop 2
       endif
       end
