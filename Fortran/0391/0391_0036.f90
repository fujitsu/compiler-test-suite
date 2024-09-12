module m1
type y3
end type
end
call s4
print *,'pass'
end
subroutine s4
use m1
type(y3)::v
do concurrent(k=1:1)
end do
end
