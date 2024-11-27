 call s1
 print *,'pass'
 end
 subroutine s1()
      call ss01('a',5)
      contains
       subroutine ss01(ccc,j)
       integer    j
       character*(*) ccc
       select case (repeat(ccc,j))
       end select
       k=0
       select case (repeat(ccc,j))
        case ('aaaaa')
          k=1
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case ('aaaaa')
          k=1
        case ('aaaaaa')
          k=2
        case ('aaaa')
          k=3
       end select
       if (k/=1)write(6,*) "NG"
       end subroutine
      end
