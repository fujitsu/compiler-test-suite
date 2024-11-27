       call ss01('bbbbb',0)
print *,'pass'
       end
       subroutine ss01(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (repeat(ccc,j))
       case ('aaaaa':      )
         k=1
       end select
       if (j==1)then
        if (j/=k)write(6,*) "NG"
       else
        if (j/=k)write(6,*) "NG"
       endif
       end subroutine
