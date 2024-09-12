module module_test
  implicit none
  type type_test1
     integer :: var1(2)
     procedure(proc_test), pointer :: pointer_test
  end type 

  contains
  subroutine proc_test(this)
  class(type_test1), intent(inout) :: this
  this%var1 = 1
  end subroutine
end module module_test


use module_test
type(type_test1):: x
x%pointer_test => proc_test
call x%pointer_test()
if (any(x%var1/=1)) print *,201
print *,'pass'
end
