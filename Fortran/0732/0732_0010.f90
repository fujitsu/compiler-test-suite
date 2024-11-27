       call ss01('aaaa2',1)
       call ss01('aaaa2',0)
       call ss02('aaaa2',1)
       call ss02('bbbbb',0)
       call ss03('aaaa2',1)
       call ss03('bbbbb',0)
       call ss04('aaaa2',1)
       call ss04('bbbbb',0)
       print *,'pass'
       contains
       subroutine ss04(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (ccc(max(j,1):))
       case ('aaaaa'      )
         k=3
       case ('aaaa1'      )
         k=2
       case ('aaaa2'      )
         k=1
       end select
       if (j/=k)write(6,*) "NG"
       end subroutine
       subroutine ss03(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (ccc(:))
       case ('aaaaa'      )
         k=3
       case ('aaaa1'      )
         k=2
       case ('aaaa2'      )
         k=1
       end select
       if (j/=k)write(6,*) "NG"
       end subroutine
       subroutine ss02(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (ccc)
       case ('aaaaa'      )
         k=3
       case ('aaaa1'      )
         k=2
       case ('aaaa2'      )
         k=1
       end select
       if (j/=k)write(6,*) "NG"
       end subroutine
       subroutine ss01(ccc,j)
       integer    j
       character*(*) ccc
       k=0
       select case (repeat(ccc,j))
       case ('aaaaa'      )
         k=3
       case ('aaaa1'      )
         k=2
       case ('aaaa2'      )
         k=1
       end select
       if (j/=k)write(6,*) "NG"
       end subroutine
       end
