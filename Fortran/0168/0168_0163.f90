module m1
integer::k=1
contains
subroutine sub( c1)
 integer,value:: c1(k)
c1(1)=c1(1)+10
end subroutine
end

use m1
integer:: v1(1)=1
if (v1(1) /=1) print *,101
 call sub( v1 ) 
if (v1(1) /=1) print *,111
print *,'pass'
end
