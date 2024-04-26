module m1
contains
subroutine s1(k1,k2)
integer,allocatable::k1
integer,allocatable,dimension(:)::k2

allocate(k1,k2(2))
k1=1
k2=2
end subroutine
subroutine s2()
integer,allocatable::k1
integer,allocatable,dimension(:)::k2

allocate(k1,k2(2))
k1=1
k2=2
if (k1/=1)print *,401,k1
if (k2(1)/=2)print *,403,k2(1)
if (k2(2)/=2)print *,404,k2(2)
end subroutine
end
subroutine x1
use m1
integer,allocatable::k1
integer,allocatable,dimension(:)::k2
call       s1(k1,k2)
if (k1/=1)print *,201,k1
if (k2(1)/=2)print *,203,k2(1)
if (k2(2)/=2)print *,204,k2(2)
call       s2()
end
call x1
print *,'pass'
end





