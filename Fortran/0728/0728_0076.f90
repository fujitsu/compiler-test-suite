 call s1
 print *,'pass'
 end
 subroutine s1()
      call ss01('bbbbb',1)
      contains
       subroutine ss01(ccc,j)
       integer    j
       character*(*) ccc
       select case (repeat(ccc,j))
       end select
       k=0
       select case (repeat(ccc,j))
        case ('aaaaa':      )
          k=1
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case ('bbbba':)
          k=1
        case ('aaaa1':'aaaa2')
          k=2
        case ('aaaa3':'aaaa4')
          k=3
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case ('zzzzz':)
          k=1
        case ('xbbbb':'xbbbc')
          k=2
        case ('xcccc':'xcccd')
          k=3
        case default
          k=4
       end select
       if (k/=4)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case ('bbbba':        )
          k=1
        case ('aaaa1':'aaaa2')
          k=2
        case ('aaaa3':'aaaa4')
          k=3
        case default
          k=4
       end select
       if (k/=1)write(6,*) "NG"
       select case (repeat(ccc,j))
       end select
       k=0
       select case (repeat(ccc,j))
        case (       'bbbbb':)
          k=1
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case (       'bbbbb':)
          k=1
        case ('aaaa1':'aaaa2')
          k=2
        case ('aaaa3':'aaaa4')
          k=3
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case ('zzzzz':)
          k=1
        case ('xbbbb':'xbbbc')
          k=2
        case ('xcccc':'xcccd')
          k=3
        case default
          k=4
       end select
       if (k/=4)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case (       'bbbbb ':)
          k=1
        case ('aaaa1':'aaaa2')
          k=2
        case ('aaaa4':'aaaa5')
          k=3
        case default
          k=4
       end select
       if (k/=1)write(6,*) "NG"
       end subroutine
      end
