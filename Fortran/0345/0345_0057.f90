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

      module moda
       use mod
      contains
       integer function sub()
         t=(/(i,i=1,5)/)
         call sub0()
         call sub1()
         call sub2()
         call sub3()
         sub=0 
         if (associated(p)) nullify(p)
       end function
      end module

      program main
       use moda
        if (sub()/=0) print *,'error3'
        print *,'pass'
      end program
