module m1
procedure(s),pointer,protected::p
contains
subroutine s(k)
k=k+1
end subroutine
subroutine ss
p=>s
end subroutine
end
use m1
call ss
n=0
call s(n)
if (n/=1) print *,201
print *,'pass'
end
