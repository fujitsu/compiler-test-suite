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
if (x%z==999) f2=f2+1
if (x%z==-1 ) f3=f3+1
IF (ASSOCIATED(x%vector)) then
  x%vector=-7777
endif
x%z=-2
f1=f1+1
END SUBROUTINE
END MODULE
SUBROUTINE example1
USE m
TYPE(t) ::a
a=af()
if (a%z/=-1) print *,201,a%z
if (any(a%vector/=-7777)) print *,202,a%vector
contains
function af() result(r)
type(t)::r
r%z=-1
allocate(r%vector(10))
r%vector=1 
end function

end
subroutine s1
use m
call       example1
if (f1/=3    ) print *,101,f1
if (f2/=1    ) print *,102,f2
if (f3/=2    ) print *,103,f3
end
call s1
print *,'pass'
end
