module m1
integer,parameter::c(3)=[1,2,3]
contains
subroutine ss(a,k)
integer,optional::a(:)
if (k==1) then
   if (.not.present(a)) print *,101
   a=a+1
else
   if (     present(a)) print *,102
endif
end subroutine
subroutine s1(p,kk)
type x
integer:: x1
integer,allocatable ::a(:)
end type
type(x)::v
integer,allocatable,optional ::p(:)
allocate(v%a(3),source=c)
call ss(v%a,1)
if (any(v%a/=c+1)) print *,101
v%a=c  
call ss(  k=0)
call ss(p,kk )
if (kk==1) then
if (any(p/=c+1)) print *,201
endif
end subroutine
subroutine s0
type z
integer:: x1
integer,allocatable ::p(:)
end type
type(z)::y
call s1(y%p,0)
call s1(null(),  kk=0)
allocate(y%p(3),source=c)
call s1(y%p,1)
if (any(y%p/=c+1)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

