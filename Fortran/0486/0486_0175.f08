module m1
contains
pure subroutine sub(a1,a2)
integer,intent(out)::a1(:)
integer,intent(in):: a2(:)
a1=a2
end subroutine
end
use m1
integer:: a(3)=[1,2,3]
call sub( a(2:), (a(:2)))
if (any(a/=[1,1,2])) print *,201
print *,'pass'
end
