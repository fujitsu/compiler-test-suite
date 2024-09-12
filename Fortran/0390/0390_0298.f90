module m1
 type x
   integer::x1
   integer,dimension(:),allocatable:: p
 end type
 integer,parameter::c(3)=[1,2,3]
 integer(8)::na
contains
subroutine tt(n,k,kk)
integer,optional:: n(3)
if (k==1) then
  if (.not.present(n)) print *,101
  if (any(n/=c)) print *,201
  if (kk==0) then
    if (loc(n)/=na) print *,301
  else
    if (loc(n)==na) print *,302
  endif
else
  if (     present(n)) print *,102
endif
end subroutine
subroutine ss1(v,k,kk,nnn)
 type (x),optional:: v(:)
  if (present(v)) then
    na=loc(v(nnn)%p)
    call tt(v(nnn)%p,k,kk)
   if (nnn==0) print *,401
  else
    call tt(         k=k,kk=kk)
   if (nnn/=0) print *,402
  endif
end subroutine
end
subroutine s1
use m1
 type (x)         :: v(3)
allocate(v(2)%p(3),source=c)
call ss1(v,k=1,kk=0,nnn=2)
call ss1(v,k=0,kk=0,nnn=3)
call ss1(       k=0,kk=0,nnn=0)
end
call s1
print *,'pass'
end

 

