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
  test=> s
    call test()
  end subroutine 
  subroutine sub3
  use m1
    call sub33
    contains
    subroutine sub33
  test=> s
    call test()
    call sub34
    end subroutine
  end subroutine
    subroutine sub34
    call test()
    end subroutine
subroutine s
n=n+1
end subroutine

end

program main

  use m2
  implicit none
  call sub2()
  call sub3()
if (n/=3) print *,201
print *,'pass'

end program
