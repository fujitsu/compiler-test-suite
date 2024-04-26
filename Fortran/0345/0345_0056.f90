      module mod
       integer(4),target::t(5)
       integer(4),pointer::p(:)
      contains
       subroutine sub0()
        p=>t
       end subroutine
       subroutine sub1()
         if (any(p/=t)) print *,'error1'
       end subroutine
       subroutine sub2()
         nullify(p)
       end subroutine
       subroutine sub3()
         if (associated(p)) print *,'error2'
       end subroutine
      end module

      integer function sub()
       use mod
        t=777
        call sub0()
        call sub1()
        call sub2()
        call sub3()
        sub=0 
        if (associated(p)) nullify(p)
      end function

      program main
       integer,external::sub
        if (sub()/=0) print *,'error3'
        print *,'pass'
      end program
