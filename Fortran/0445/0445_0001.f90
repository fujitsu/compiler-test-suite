module module_test
  implicit none
  type type_test1
     integer :: var1(2)
     procedure(proc_test), pointer :: pointer_test
  end type 

  contains
  integer function proc_test(this)
  class(type_test1), intent(inout) :: this
  proc_test = 0
  this%var1 = 1
  end function proc_test
end module module_test


use module_test
print *,'pass'
end
