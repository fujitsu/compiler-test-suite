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
integer,allocatable ::a(:)
integer,allocatable,optional ::p(:)
allocate(a(3),source=c)
call ss(a,1)
if (any(a/=c+1)) print *,101
a=c  
call ss(  k=0)
call ss(p,kk )
if (kk==1) then
if (any(p/=c+1)) print *,201
endif
end subroutine
subroutine s0
integer,allocatable ::p(:)
call s1(p,0)
call s1(null(),  kk=0)
allocate(p(3),source=c)
call s1(p,1)
if (any(p/=c+1)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

