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
if (associated( test , s) )print *,901
 call ss( test, s)
    call test()
  end subroutine 
  subroutine sub3
  use m1
 call ss( test, s)
    call sub33
    contains
    subroutine sub33
if (.not.associated( test , s) )print *,902
    call test()
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
  call sub2()
  call sub3()
if (n/=2) print *,201
print *,'pass'

end program
