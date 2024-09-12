module m1
integer:: n=0
contains
subroutine s1(p)
procedure(),pointer,intent(in)::p
call p
end subroutine
end
use m1
procedure ():: e
procedure(),pointer::p
p=>e
call s1(p)
if (n/=1) print *,101
print *,'pass'
end
subroutine e
use m1
n=n+1
end
