module m1

  procedure(),pointer :: test
  integer::n=0
end module m1

module m2

  use m1
  implicit none
  integer :: i

contains

  subroutine sub2
real::call
 call ss( test, s)
    call=test()
if (call/=1) print *,301
  end subroutine 
  subroutine sub3
  use m1
real::call
 call ss( test, s)
    call sub33
    contains
    subroutine sub33
    call=test()
if (call/=1) print *,302
    end subroutine
  end subroutine
real function   s()
n=n+1
s=1
end function  
subroutine ss(p,x)
 procedure():: x
 procedure(),pointer::p
 p=>x
end subroutine
end

program main

  use m2
  implicit none
  call sub2()
  call sub3()
if (n/=2) print *,201
print *,'pass'

end program
