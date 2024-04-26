MODULE m
integer::f1=0,f2=0
TYPE t2
REAL,POINTER :: c(:)=>null(),d(:)=>null()
integer::z2=2
CONTAINS
FINAL :: t2f
END TYPE
CONTAINS
SUBROUTINE t2f(x) 
TYPE(t2) :: x
if (x%z2/=2) print *,909
IF (ASSOCIATED(x%c)) DEALLOCATE(x%c)
IF (ASSOCIATED(x%d)) DEALLOCATE(x%d)
END SUBROUTINE
END
subroutine s1
use m
TYPE(t2) x2
END SUBROUTINE
use m
call s1

print *,'pass'
end

