module m1
integer,protected::x1
integer,protected::x2
integer,protected::x3
integer,protected::x4
equivalence(x1,x2)
equivalence(x3,x4)
equivalence(x1,x4)
contains
subroutine s1
x1=1
end subroutine
end
use m1
call s1
if (x1/=1)write(6,*) "NG"
if (x2/=1)write(6,*) "NG"
if (x3/=1)write(6,*) "NG"
if (x4/=1)write(6,*) "NG"
print *,'pass'
end

