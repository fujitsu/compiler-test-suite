module m1
type x
  integer::k
end type
contains
subroutine ss(a,b)
type (x)::a(:,:)
character(1):: b(:,:)
intent(out)::a,b
a(1,1)=x(1)
b(1,1)='x'
if (a(1,1)%k/=1)print *,101
if (b(1,1)/='x')print *,201
end subroutine 
end
use m1
type (x)::a(100,100)
character(1):: b(100,100)
call ss(a(1:100:10,1:100:10), b(1:100:10,1:100:10)) 

print *,'pass'
end


