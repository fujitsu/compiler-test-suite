       call ss01('aaaaa',1)
       call ss01('bbbbb',0)
       call ss02('aaaaa',1)
       call ss02('bbbbb',0)
       call ss03('aaaaa',1)
       call ss03('bbbbb',0)
       call ss04('aaaaa',1)
       call ss04('bbbbb',0)
       print *,'pass'
       contains
       subroutine ss04(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (ccc(max(j,1):))
       case ('aaaaa':      )
         k=1
       end select
       if (j==1)then
        if (j/=k)write(6,*) "NG"
       else
        if (j==k)write(6,*) "NG"
       endif
       end subroutine
       subroutine ss03(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (ccc(:))
       case ('aaaaa':      )
         k=1
       end select
       if (j==1)then
        if (j/=k)write(6,*) "NG"
       else
        if (j==k)write(6,*) "NG"
       endif
       end subroutine
       subroutine ss02(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (ccc)
       case ('aaaaa':      )
         k=1
       end select
       if (j==1)then
        if (j/=k)write(6,*) "NG"
       else
        if (j==k)write(6,*) "NG"
       endif
       end subroutine
       subroutine ss01(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (repeat(ccc,1))
       case ('aaaaa':      )
         k=1
       end select
       if (j==1)then
        if (j/=k)write(6,*) "NG"
       else
        if (j==k)write(6,*) "NG"
       endif
       end subroutine
       end
