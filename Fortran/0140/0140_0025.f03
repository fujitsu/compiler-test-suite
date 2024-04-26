module m
type t
integer,private::a(101,102,103,3)=1
end type
type(t)::tt
contains
subroutine sss()
if(ubound(tt%a,1)/=101) print *,'err'
end subroutine
end
use m
call sss()
print *,'pass'
end
