module m1
interface 
 subroutine x2(r)
 end subroutine
end interface
interface s
 procedure x1,x2
 end interface
contains
subroutine x1(k)
k=1
end subroutine
end
use m1
call s(n)
if (n/=1)print *,101
call s(a)
if (a/=10)print *,103
print *,'pass'
end


subroutine x2(a)
a=10
end subroutine
