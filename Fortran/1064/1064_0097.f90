module m1
  type x
    integer::x1
  end type
  type(x),allocatable:: a(:)
contains
 subroutine s1(a)
  type(x),intent(out),allocatable:: a(:)
    allocate(a(2:3))
    a%x1= [2,3]
 end subroutine
end

use m1
    allocate(a(12:13))
    a%x1=[12,13]
call s1(a)
if (any(lbound(a)/=2)) print *,201
if (any(a%x1/=[2,3])) print *,202
print *,'pass'
end
