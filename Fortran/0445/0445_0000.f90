module module_test
  implicit none
  type type_test1
     integer :: n
  end type type_test1
  type, extends(type_test1) :: type_test2
     integer :: var1(2), var2(2)
     procedure(proc_test), pointer :: pointer_test
  end type type_test2

  contains
  integer function proc_test(this)
  class(type_test2), intent(inout) :: this
  proc_test = 0
  this%var1 = this%var2
  end function proc_test
end module module_test

use module_test
print *,'pass'
end

