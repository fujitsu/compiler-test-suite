module m1
integer,target::a1(3)=[1,2,3]
contains
subroutine ss(x)
integer,target,dimension(..):: x
a1=[11,12,13]
call sss(x)
if (any(a1/=[11,12,13])) print *,801
end subroutine
subroutine sss(x)
integer,target,dimension(..):: x
end subroutine
end
subroutine s1
use m1
call ss(a1)
end
call s1
print *,'pass'
end
