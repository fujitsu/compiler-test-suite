MODULE m
TYPE t
integer:: z=999
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
FINAL :: finalize_t1s
END TYPE
integer:: f1=0,f2=0,f3=0
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t) x
if (x%z/=999 .and. x%z/= -1) print *,90001
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
f1=f1+1
END SUBROUTINE
END MODULE
SUBROUTINE example1
USE m
TYPE(t) ::a
a=t(-1,null())
a%z=999
if (a%z/=999) print *,202
end
subroutine s1
use m
call       example1
if (f1/=2    ) print *,101,f1
end
call s1
print *,'pass'
end
