module m1
integer           ,pointer::p(:),pp(:)
contains
subroutine ss1(p1)
integer,intent(in),pointer::p1(:)
call sss1(p1)
end subroutine
subroutine ss2(p2)
integer,intent(in),pointer::p2(:)
call sss2(p2)
end subroutine
subroutine sss1(x)
integer                   ::x(3)
if (any(x/=[1,2,3])) print *,601,x
x=x+10
end subroutine
end
subroutine ss
use m1
allocate(pp(3*2))
p=>pp(::2)
p=[1,2,3]
call ss1(p)
if (any(p/=[11,12,13])) print *,1001
p=[1,2,3]
call ss2(p)
if (any(p/=[11,12,13]+10)) print *,1002
end
subroutine sss2(x)
integer                   ::x(3)
if (any(x/=[1,2,3])) print *,501,x
x=x+20
end
call ss
print *,'pass'
end

