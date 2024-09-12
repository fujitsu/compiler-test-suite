MODULE m
TYPE t
integer:: z=999
CONTAINS
FINAL :: finalize_t1s
FINAL :: finalize_t1a
END TYPE

integer:: f1=0,f2=0

CONTAINS
SUBROUTINE finalize_t1a(x)
TYPE(t) x(:)
if (any(x%z/=999 .and. x%z/= -1)) print *,90002
f2=f2+1
END SUBROUTINE

SUBROUTINE finalize_t1s(x)
TYPE(t) x
if (x%z/=999 .and. x%z/= -1) print *,90001
f1=f1+1
END SUBROUTINE
END MODULE

SUBROUTINE example1
USE m
TYPE(t) ::a(2)
a=[t(-1),t(-1)]
end
subroutine s1
use m
call       example1
if (f2/=2    ) print *,101,f1, f2
end
call s1
print *,'pass'
end