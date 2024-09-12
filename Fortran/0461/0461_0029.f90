MODULE m
TYPE t
integer:: z=999
REAL(4),POINTER :: vector(:) => NULL()

CONTAINS
FINAL :: finalize_t1a
END TYPE

integer:: f1=0,f2=0,f3=0

CONTAINS
SUBROUTINE finalize_t1a(x)
TYPE(t) x(:)
if (x(2)%z==999) f2=f2+1
if (x(2)%z==-1 ) f3=f3+1
IF (ASSOCIATED(x(2)%vector)) then
  x(2)%vector=-7777
endif
x(2)%z=-2
f1=f1+1
END SUBROUTINE
END MODULE

SUBROUTINE example1
USE m
TYPE(t) ::a(2)
a= [ af() , af() ]
if (any(a%z/=-1)) print *,201,a%z
if (.not.associated(a(1)%vector)) print *,202
if (.not.associated(a(2)%vector)) print *,203

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
if (f1/=2    ) print *,101,f1
if (f2/=1    ) print *,102,f2
if (f3/=1    ) print *,103,f3
end

call s1
print *,'pass'
end
