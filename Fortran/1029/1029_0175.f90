    module mod
      integer(4)::ii
      logical(4)::ll
      character(4)::ch
      real(4)::rr
      complex(4)::cc
    end module

    program abc
      use mod
      ii=1 ; ll=.true. ; ch='abcd' ; rr=2.0e0 ; cc=(4.0e0,4.0e0)
      call sub()
     print *,'pass'
    end

    subroutine sub()
     use mod
     n=0
     if (ii+1.eq.2 .and. &
         ll .and. &
         ch.eq.'abc'//'d' .and. &
         (-rr)*2.eq.-4.0e0 .and. &
         -cc+(1.0e0,1.0e0).eq.(-3.0e0,-3.0e0)) then
       n=n+1
     else
       write(6,*) "NG"
     endif
    end subroutine
