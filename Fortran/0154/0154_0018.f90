module m&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890

type x&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
integer x1
end type
type,extends(x&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
):: xx&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
integer x2
end type
contains
subroutine s1&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
call s2&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
contains
subroutine s2&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
type,extends(xx&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
):: xxx&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
end type
class(xxx&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
),pointer:: p
end subroutine
end subroutine
end 
use m&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
call       s1&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890&
1234567890123456789012345678901234567890123456789012345678901234567890
print *,'pass'
end