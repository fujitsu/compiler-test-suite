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
  subroutine       proc_test(this)
  class(type_test2), intent(inout) :: this
  this%var1 = this%var2
  end subroutine
end module module_test

use module_test
type(type_test2)::x
x%var2=1
x%pointer_test=> proc_test
call x%pointer_test()
if (any(x%var1/=1)) print *,301
if (any(x%var2/=1)) print *,302

print *,'pass'
end

