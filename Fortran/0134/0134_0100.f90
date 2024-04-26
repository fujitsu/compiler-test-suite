module m1
contains
subroutine array_new(x)
   integer,dimension(:)::x
if (size(x)/=2)print *,1003
if (x(1)/=1)print *,1001,x(1)
if (x(2)/=0)print *,1002,x(2)
end subroutine
end
subroutine s1
use m1
   CALL array_new (&
              (/ (MOD(i,2), i=1, 2) /))
end 
call s1
print *,'pass'
end

