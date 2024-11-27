module m1
  integer,private::x
end
module m2
use m1
contains
subroutine s1
x=2
end subroutine
end 
use m2
call s1
print *,'pass'
end
