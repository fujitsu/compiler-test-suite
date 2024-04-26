module m1
contains
subroutine s(ca)
character(2)  ca(3)
if (ca(1)/='12') print *,101
if (ca(2)/='34') print *,102
if (ca(3)/='56') print *,103
end subroutine
subroutine t(ca)
character(2)  ca(2)
if (ca(1)/='34') print *,202
if (ca(2)/='56') print *,203
end subroutine
end
subroutine s1
use m1
character(6)::  cs='123456'
associate( c=>cs)
call s(c)
call t(c(3:))
end associate
end 

call s1
print *,'pass'
end

