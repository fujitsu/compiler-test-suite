module module_test
  implicit none
  type type_test1
     integer :: n
  end type type_test1
  type, extends(type_test1) :: type_test2
     integer,allocatable :: var1(:), var2(:)
     procedure(proc_test), pointer :: pointer_test
  end type type_test2
     procedure(proc_test), pointer :: pointer_t

  contains
  integer function proc_test(this)
  class(type_test2), intent(inout) :: this
  proc_test = 10
  this%var1 = this%var2
  end function proc_test
end module module_test

use module_test
class(type_test1),allocatable::x
allocate( type_test2:: x)
k=0
select type(x)
 type is( type_test2 )
allocate(x%var1(2),x%var2(2))
   x%var2=1
   x%pointer_test=> proc_test
   pointer_t=> proc_test
if (x%pointer_test() /= 10) print *,101
if (any(x%var1/=1)) print *,301
if (any(x%var2/=1)) print *,302
x%var1=0
x%var2=1
if (pointer_t(x) /= 10) print *,201
if (any(x%var1/=1)) print *,311
if (any(x%var2/=1)) print *,312
k=1
end select
if(k/=1) print *,3010

print *,'pass'
end
