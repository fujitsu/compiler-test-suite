module m1
contains
subroutine ss(a,b)
integer:: a(:),b(20)
b= [ a ]
a= [ b ]
end subroutine
end
use m1
integer,parameter:: p1=20
integer:: a(p1*2)=1,b(p1)
a(::2)=2
call ss(a(::2),b)
if (any(a(::2)/=2) ) print *,201
if (any(b/=2) ) print *,202
print *,'pass'
end

