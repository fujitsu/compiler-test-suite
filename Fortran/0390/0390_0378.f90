module m1
integer,parameter::c=3
contains
subroutine ss(a,k)
integer,intent(in),optional::a
if (k==1) then
   if (.not.present(a)) print *,101
   if ((a/=c)) print *,601
else
   if (     present(a)) print *,102
endif
end subroutine
subroutine s1(p,kk)
integer,allocatable ::a
integer,allocatable,optional ::p
allocate(a,source=c)
call ss(a,1)
if ((a/=c)) print *,101
a=c  
call ss(  k=0)
call ss(p,kk )
if (kk==1) then
if ((p/=c)) print *,201
endif
end subroutine
subroutine s0
integer,allocatable ::p
call s1(p,0)
call s1(  kk=0)
allocate(p,source=c)
call s1(p,1)
if ((p/=c)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

