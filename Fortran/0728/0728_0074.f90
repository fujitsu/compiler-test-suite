 call s1
 print *,'pass'
 end
 subroutine s1()
      call ss01('a',5)
      contains
       subroutine ss01(ccc,j)
       integer    j
       character*(1) ccc
       select case (ccc//ccc//ccc//ccc//ccc)
       end select
       k=0
       select case (ccc//ccc//ccc//ccc//ccc)
        case ('aaaaa':'aaaab')
          k=1
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (ccc//ccc//ccc//ccc//ccc)
        case ('aaaaa':'aaaab ')
          k=1
        case ('bbbbb':'bbbbc')
          k=2
        case ('ccccc':'ccccd')
          k=3
       end select
       if (k/=1)write(6,*) "NG"
       k=0
       select case (ccc//ccc//ccc//ccc//ccc)
        case ('xaaaa':'xaaab ')
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
       select case (ccc//ccc//ccc//ccc//ccc)
        case ('aaaaa':'aaaab ')
          k=1
        case ('bbbbb':'bbbbc')
          k=2
        case ('ccccc':'ccccd')
          k=3
        case default
          k=4
       end select
       if (k/=1)write(6,*) "NG"
       end subroutine
      end
