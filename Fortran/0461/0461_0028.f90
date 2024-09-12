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
a=t(z=-1,vector=null())
if (a%z/=-1) print *,201,a%z
if (associated(a%vector)) print *,202

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
