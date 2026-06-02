module m1
  type x(k)
    integer,kind:: k
    integer a(k)
  end type
  type (x(2)) :: v
contains
 subroutine s1
   integer array( v%k )
   if (size(array)/=2) print *,101
 end subroutine
end
use m1
call s1
print *,'pass'
end
