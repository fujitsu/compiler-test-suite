#define val vvvvvv

module m1
contains
subroutine s(i)
integer,value::i
if (i/=1)print *,'error-1'
end subroutine
end
use m1
print *,'pass'
end

