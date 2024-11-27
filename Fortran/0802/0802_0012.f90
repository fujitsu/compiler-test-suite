module m1

  procedure(),pointer :: test
  integer::n=0
  type y
    integer::y1=1
    procedure(),nopass,pointer::pp
  end type
  type (y)::v
end module m1

module m2

  use m1
  implicit none
  integer :: i

contains

  subroutine sub2
  v= y( pp=test)
    call v%pp()
  end subroutine 
  subroutine sub3
  use m1
 call ss( test, s)
    call sub33
    contains
    subroutine sub33
  v= y( pp=test)
    call v%pp()
    end subroutine
  end subroutine
subroutine s
n=n+1
end subroutine
subroutine ss(p,x)
 procedure():: x
 procedure(),pointer::p
 p=>x
end subroutine
end

program main

  use m2
  implicit none
test=>s
  call sub2()
  call sub3()
if (n/=2) print *,201
print *,'pass'

end program
