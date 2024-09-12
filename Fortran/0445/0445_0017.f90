module module_test
  implicit none
  type type_test1
     integer,pointer :: var1(:)
     procedure(proc_test), pointer :: pointer_test
  end type 

  contains
  integer function proc_test(this)
  class(type_test1), intent(inout) :: this
  proc_test = 10
  this%var1 = 1
  end function proc_test
end module module_test


use module_test
type(type_test1):: x
allocate( x%var1(2))
x%pointer_test => proc_test
if (x%pointer_test()/=10) print *,101
if (any(x%var1/=1)) print *,201
print *,'pass'
end
