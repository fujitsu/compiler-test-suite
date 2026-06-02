module mod1
type ty10(ii)
integer,kind :: ii
integer(8) :: array(ii)=(/(k,k=1,4)/)
end type
type (ty10(4)) :: x
end
use mod1
if (any(x%array /=[1,2,3,4])) print *,101
print *,'pass'
end
