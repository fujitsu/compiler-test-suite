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
        case (       :'bbbbc')
          k=1
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case (       :'bbbbc ')
          k=1
        case ('ddddd':'dddde')
          k=2
        case ('ccccc':'ccccd')
          k=3
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case (       :'aaaab ')
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
        case (       :'bbbbc ')
          k=1
        case ('ddddd':'dddde')
          k=2
        case ('ccccc':'ccccd')
          k=3
        case default
          k=4
       end select
       if (k/=1)write(6,*) "NG"
       select case (repeat(ccc,j))
       end select
       k=0
       select case (repeat(ccc,j))
        case (       :'bbbbb')
          k=1
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case (       :'bbbbb')
          k=1
        case ('ddddd':'dddde')
          k=2
        case ('ccccc':'ccccd')
          k=3
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (repeat(ccc,j))
        case (       :'aaaab ')
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
        case (       :'bbbbb ')
          k=1
        case ('ddddd':'dddde')
          k=2
        case ('ccccc':'ccccd')
          k=3
        case default
          k=4
       end select
       if (k/=1)write(6,*) "NG"
       end subroutine
      end
