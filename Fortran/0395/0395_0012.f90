module m1
  integer,target    ::t1(2)=1
  integer,target    ::t2(2)=2
  integer           ::t0(2)=1
  integer(8)        ::mmm
type x
  integer:: z1
  integer,contiguous,pointer::p1(:)
  integer,allocatable::x1(:)
end type
type (x):: v(2)
contains
function f() result(r)
integer,contiguous,pointer::r(:)
allocate(r(2))
end function
function ff(k) result(r)
integer,pointer::r(:)
integer,target,save::t(3)
if (k==1) then
allocate(r(2))
r=1
else
t(::2)=1
r=>t(::2)
endif
end function
subroutine ss(a1)
  integer,contiguous::a1(:)
if (is_contiguous(f()).and. is_contiguous(f()).and. is_contiguous(f()).and.  is_contiguous(f())) then
   else
     print *,102
endif
if (is_contiguous(ff(1)).and. is_contiguous(ff(1)).and. is_contiguous(ff(1)).and.  is_contiguous(ff(1))) then
   else
     print *,103
endif
if (.not.is_contiguous(ff(0)).and. .not.is_contiguous(ff(0)).and. .not.is_contiguous(ff(0)).and.  .not.is_contiguous(ff(0))) then
   else
     print *,104
endif
  allocate(v(2)%x1(2))
v(2)%x1=t1
v(2)%p1=>t1
if (is_contiguous(v(2)%p1)) then
else
     print *,105
endif
if (.not.is_contiguous(a1)) print *,105
if (.not.is_contiguous(v(2)%x1)) print *,106

!$omp parallel firstprivate(v,a1)
v(2)%x1=t2
a1=t2
v(2)%p1=>t2
mmm=loc(v(2)%p1)
call=z(v(2)%p1,2,3)
if (is_contiguous(v(2)%p1)) then
else
     print *,205
endif
mmm=loc(a1)
call=z(a1,2,3)
if (.not.is_contiguous(a1)) print *,105
mmm=loc(v(2)%x1)
call=y(v(2)%x1,2,3)
if (.not.is_contiguous(v(2)%x1)) print *,106
!$omp end parallel
end subroutine
subroutine s1
  call ss(t0)
end subroutine
function y(a,n,k) result(r)
integer:: a(2),r
if (k==1) then
  if (loc(a)/=loc(v(2)%x1)) print *,1301
else
  if (loc(a)/=mmm) print *,1303
endif
if (any(a/=n)) print *,400
r=0
end function
function   z(a,n,k) result(r)
integer:: a(2),r
r=0
if (k==1) then
  if (loc(a)/=loc(t1)) print *,301
else if (k==2) then
  if (loc(a)/=loc(t0)) print *,302
else
  if (loc(a)/=mmm) print *,303
endif
if (any(a/=n)) print *,400
end function  
end
use m1
call omp_set_num_threads(1)
call s1
print *,'pass'
end
