    module mod5
     contains
     subroutine mod3(i,k)
      integer(8)::k
       k = k + i**2
       if (i==10) then
         if (mod4(k)) print *,'error1'
       endif
     end subroutine mod3
     logical(1) function mod4(k)
      integer(8)::k
       mod4 = k /= 385
     end function mod4
    end module mod5

    module mod0
     use mod5
     contains
     subroutine mod1(n,l)
       integer(2)::n
       logical(1)::l
       n=n*2
       l=.false..or.l
       call mod2()
      contains
      subroutine mod2()
       integer(8)::k
        k=0
        do i=1,n
          call mod3(i,k)
        enddo
        l = mod4(k)
        if (l) print *,'error2'
      end subroutine mod2
     end subroutine mod1
    end module mod0

    program main
     use mod0
     integer(2)::n
     logical(1)::l
      n=5
      l=.true.
      call mod1(n,l)
      print *,'pass'
    end program
