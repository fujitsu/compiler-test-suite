module test_module

interface
  subroutine sub
  end subroutine
end interface
  procedure(sub),pointer :: test
integer:: n=0

end module test_module

module test_module2

  use test_module
  implicit none

contains

  subroutine sub2
    call set
    call test
    write(2,*) 'test_module2'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
  write(2,*) 'test'
  call sub2()
if (n/=1) print *,101
print *,'pass'

end program

subroutine set
use test_module
interface
  subroutine sub3
  end subroutine
end interface
test=> sub3
end
  subroutine sub3
use test_module
n=n+1
  end subroutine
