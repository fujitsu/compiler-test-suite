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

      subroutine sub()
       use mod
        t=1
        call sub0()
        call sub1()
        call sub2()
        call sub3()
      end subroutine

      program main
        call sub()
        print *,'pass'
      end program
