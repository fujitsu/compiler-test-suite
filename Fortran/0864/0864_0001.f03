module mm1
  type x
    integer::x1
    procedure(),pointer,nopass::p1
  end type
  type y
    type(x)::y1
  end type
  contains
   subroutine ss1
   end subroutine
end
subroutine s1
use mm1
type (x),allocatable::v1
 allocate(v1,source= x(1,ss1))
end
call s1
print *,'pass'
end