    module mod
      integer(4)::ii
      logical(4)::ll
      character(4)::ch
      real(4)::rr
      complex(4)::cc
    end module

    program abc
      use mod
      n=0
      ii=1 ; ll=.false. ; ch='wxyz' ; rr=0.0e0 ; cc=(0.0e0,4.0e0)
      call sub(n)
      ii=0 ; ll=.true. ; ch='wxyz' ; rr=0.0e0 ; cc=(0.0e0,4.0e0)
      call sub(n)
      ii=0 ; ll=.false. ; ch='abcd' ; rr=0.0e0 ; cc=(0.0e0,4.0e0)
      call sub(n)
      ii=0 ; ll=.false. ; ch='wxyz' ; rr=2.0e0 ; cc=(0.0e0,4.0e0)
      call sub(n)
      ii=0 ; ll=.false. ; ch='wxyz' ; rr=0.0e0 ; cc=(4.0e0,4.0e0)
      call sub(n)

      if (n/=5) write(6,*) "NG"

      ii=1 ; ll=.true. ; ch='abcd' ; rr=2.0e0 ; cc=(4.0e0,4.0e0)
      call sub(n)
      if (n/=6) write(6,*) "NG"

     print *,'pass'
    end

    subroutine sub(n)
     use mod
     if (ii+1.eq.2 .or. &
         ll .or. &
         ch.eq.'abc'//'d' .or. &
         (-rr)*2.eq.-4.0e0 .or. &
         -cc+(1.0e0,1.0e0).eq.(-3.0e0,-3.0e0)) then
       n=n+1
     else
       write(6,*) "NG"
     endif
    end subroutine
