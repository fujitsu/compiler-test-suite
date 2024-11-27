module m1
   type x1
     integer,allocatable,dimension(:,:)::a3
   end type
   parameter (is=2)
end
use m1
call s1(is)
print *,'pass'
end
subroutine s1(ip)
use m1
type(x1)::v3(ip)
end
