      module mod
       integer(4),target::t(5)
       integer(4),pointer::p(:)
      contains
       logical function sub0()
         p=>t
         sub0=.false.
       end function
       logical function sub1()
         if (any(p/=t)) print *,'error1'
         sub1=.false.
       end function
       logical function sub2()
         nullify(p)
         sub2=.false.
       end function
       logical function sub3()
         if (associated(p)) print *,'error2'
         sub3=.false.
       end function
      end module

      subroutine sub()
       use mod
        t=1
        if (sub0()) print *,'error3'
        if (sub1()) print *,'error4'
        if (sub2()) print *,'error5'
        if (sub3()) print *,'error6'
      end subroutine

      program main
        call sub()
        print *,'pass'
      end program
