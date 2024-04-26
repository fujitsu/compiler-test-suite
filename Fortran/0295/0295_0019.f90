module m1
type xx
complex,allocatable::ff(:)
integer,allocatable::f(:)
end type
type(xx),allocatable::v(:)
integer,allocatable::f(:)
complex,allocatable::ff(:)
contains
subroutine s1(nn)
allocate(v(2)%f(2))
if (nn==1) then
v(2)%f=1
endif
if (any(v(2)%f/=1))print *,101
if (allocated(v(2)%ff))print *,102
end subroutine
end
use m1
allocate(ff(2),v(2),f(2))
k=1
call s1(k)
if (k==1) then
 f=1
 ff=(2,3)
endif
if (any(f/=1))print *,201
if (any(ff/=(2,3)))print *,202
if (allocated(v(2)%ff))print *,203
print *,'pass'
end
