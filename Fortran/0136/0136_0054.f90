call s1
call s2
print *,'pass'
end
subroutine s1
use, intrinsic :: ieee_arithmetic
logical(4)::l1(5)
logical(8)::l2(5)
l1=.false.
l2=.false.
call ieee_set_flag(ieee_invalid,l1(1))
call ieee_set_flag(ieee_invalid,l2(2))
call ieee_set_flag(ieee_overflow,l1(2))
call ieee_set_flag(ieee_overflow,l2(2))
call ieee_set_flag(ieee_divide_by_zero,l1(3))
call ieee_set_flag(ieee_divide_by_zero,l2(3))
call ieee_set_flag(ieee_underflow,l1(4))
call ieee_set_flag(ieee_underflow,l2(4))
call ieee_set_flag(ieee_inexact,l1(5))
call ieee_set_flag(ieee_inexact,l2(5))
if(any(l1.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err1'
if(any(l2.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err2'
end 
subroutine s2
use, intrinsic :: ieee_arithmetic
logical(4)::l1(5)
logical(8)::l2(5)
l1=.false.
l2=.false.
call ieee_set_flag(ieee_invalid,l1)
call ieee_set_flag(ieee_invalid,l2)
if(any(l1.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err3'
if(any(l2.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err4'
call ieee_set_flag(ieee_overflow,l1)
call ieee_set_flag(ieee_overflow,l2)
if(any(l1.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err5'
if(any(l2.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err6'
call ieee_set_flag(ieee_divide_by_zero,l1)
call ieee_set_flag(ieee_divide_by_zero,l2)
if(any(l1.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err7'
if(any(l2.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err8'
CALL IEEE_SET_FLAG(IEEE_UNDERFLOW,l1)
CALL IEEE_SET_FLAG(IEEE_UNDERFLOW,l2)
if(any(l1.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err9'
if(any(l2.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err10'
call ieee_set_flag(ieee_inexact,l1)
call ieee_set_flag(ieee_inexact,l2)
if(any(l1.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err11'
if(any(l2.neqv.[.false.,.false.,.false.,.false.,.false.])) print *,'err12'
end 
