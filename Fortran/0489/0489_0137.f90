module m1
contains
subroutine s(d)
integer:: d(..)
if (bit_size(d)/=32) print *,101
if (size(d)/=6) print *,102
if (any(lbound(d)/=[1, 1])) print *,103
if (any(ubound(d)/=[3, 2])) print *,104
end 
end
use m1
integer:: a(2:4,-2:-1)=1
call s(a)
print *,'pass'
end
