       program na22
       integer fact1/1/, fact2
       do 100 i=1,10
         fact1 = fact1*i
100    continue
       call sub(fact2,10)
       if (fact1.eq.fact2) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
       endif
       stop
       end program
       recursive subroutine sub(fact,n)
       integer   fact, n, ifc
         if (n.eq.1) then
           fact=1
         else
           call sub(ifc,n-1)
           fact=ifc*n
         endif
         return
       end subroutine
