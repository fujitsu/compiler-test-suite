subroutine s1
k1=1
call ss
if (k1/=2) print *,900
contains
subroutine ss
type xx(k1)
integer,kind::  k1
integer:: a(k1)
end type
 k1=2
end subroutine
end
call s1()
print *,'pass'
end
