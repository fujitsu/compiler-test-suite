module test_module

  pointer :: test
  procedure() :: test

end module test_module

module test_module_a
  use test_module,only:test
end 

module test_module2

  use test_module
  implicit none
  integer :: i

contains

  subroutine sub2
    test => ttt
    call test()
  end subroutine sub2
  subroutine ttt()
  end subroutine

end module test_module2

program main

  use test_module2
  implicit none
  call sub2()
print *,'pass'

end program

