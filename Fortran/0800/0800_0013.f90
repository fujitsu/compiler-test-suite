module test_module

  implicit none
  procedure(),pointer :: test

end module test_module

module test_module2

  use test_module
  implicit none
  integer :: i

contains

  subroutine sub2
    call test
    write(11,*) 'test_module2'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
call set
  call sub2()
if (i/=2) print *,101
print *,'pass'

end program
subroutine set
use test_module
interface 
subroutine ss
use test_module
end subroutine
end interface 
test=> ss
end
subroutine ss
use test_module2
  implicit none
i=2
end subroutine
