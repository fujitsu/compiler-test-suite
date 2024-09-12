module module_test
  implicit none
  type type_test1
     integer :: n
  end type type_test1
  type, extends(type_test1) :: type_test2
     character(2) :: var1(2), var2(2)
     character(2) :: var3, var4
     procedure(proc_test), pointer :: pointer_test
  end type type_test2
class(type_test2),pointer:: p

  contains
  subroutine proc_test(this)
  class(type_test2), intent(inout) :: this
  this%var1 = this%var2
  this%var3 = this%var4
  end subroutine
end module module_test

subroutine ss
use module_test
call ssx
contains
subroutine ssx
allocate( p )
p%var2='1'
p%var4='2'
p%pointer_test=> proc_test
call p%pointer_test()
if (any(p%var1/='1')) print *,701
if (   (p%var3/='2')) print *,702
end subroutine
end
call ss
print *,'pass'
end

