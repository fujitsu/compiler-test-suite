       program na23
       integer fact2
       call sub(fact2,10)
       if (fact2.eq.3628800) then
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
