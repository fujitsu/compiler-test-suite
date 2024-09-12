MODULE m
TYPE t
integer:: z=999
CONTAINS
FINAL :: finalize_t1s
END TYPE
integer:: f1=0
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t) x
if (x%z/=999 .and. x%z/= -1) print *,90001
f1=f1+1
END SUBROUTINE
END MODULE
SUBROUTINE example1
USE m
TYPE(t) ::a
a=t(-1)
end
subroutine s1
use m
call       example1
if (f1/=2    ) print *,101,f1
end
call s1
print *,'pass'
end
