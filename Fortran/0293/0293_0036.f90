module mod
 type x
   integer::x1=1
   integer::x2=2
 end type
 type(x),save:: var
end
subroutine s1
use mod
if (var%x1/=1)print *,101
if (var%x2/=2)print *,102
end
call s1
print *,'pass'
end
