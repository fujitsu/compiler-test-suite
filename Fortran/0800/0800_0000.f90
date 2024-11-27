module test_module

  procedure(),pointer :: test

end module test_module

module test_module2

  use test_module
  implicit none
  integer :: i

contains

  subroutine sub2
    call test()
    write(*,*) 'test_module2'
  end subroutine sub2

end module test_module2

program main

  use test_module2
  implicit none
  write(1,*) 'test'
print *,'pass'

end program
