module m1
contains
elemental subroutine sub(a1,a2)
integer,intent(out)::a1
integer,intent(in):: a2
a1=a2
end subroutine
end
use m1
integer:: a(3)=[1,2,3]
call sub( a(2), a(1))
if (any(a/=[1,1,3])) print *,301
print *,'pass'
end
