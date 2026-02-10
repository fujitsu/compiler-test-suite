module m1
integer,parameter::c=3
type x
integer :: x1
integer,pointer ::a
end type
contains
subroutine ss(a,k)
integer,optional::a
if (k==1) then
   if (.not.present(a)) print *,101
   a=a+1
else
   if (     present(a)) print *,102
endif
end subroutine
subroutine s1(p,kk,vv)
type (x),allocatable:: v(:)
type (x),optional:: vv
integer,pointer,optional ::p
allocate(v(2))
allocate(v(2)%a,source=c)
call ss(v(2)%a,1)
if ((v(2)%a/=c+1)) print *,101
v(2)%a=c  
allocate(v(2)%a,source=c)
call ss(v(2)%a,1)
if ((v(2)%a/=c+1)) print *,101
v(2)%a=c  
call ss(  k=0)
call ss(p,kk )
if (kk==1) then
if ((p/=c+1)) print *,201
endif
end subroutine
subroutine s0
type y
integer :: x1
integer,pointer ::p=>null()
end type
type(y),allocatable::v(:)
type(x),pointer::z
allocate(v(2),z)
call s1(v(2)%p,0,z)
call s1(null(),  kk=0,vv=z)
allocate(v(2)%p,source=c)
call s1(v(2)%p,1,z)
if ((v(2)%p/=c+1)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

