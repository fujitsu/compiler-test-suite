module m1
 type z
   integer:: z1
 end type
 type,extends(z):: y
   integer:: y1
 end type
 type x
   integer:: x1
   class(z),allocatable::x2(:)
 end type
contains
elemental impure function f(d)
 type(x),intent(in)::d
 type(x)::f
 f=d 
   f%x1=f%x1+1000
 if (allocated(f%x2)) then
   f%x2(1)%z1= f%x2(1)%z1+1000
   f%x2(2)%z1= f%x2(2)%z1+1000
   k=0
  select type(p=>f%x2)
   type is(y)
     p(1)%y1= p(1)%y1+1000
     p(2)%y1= p(2)%y1+1000
     k=1
  end select
  if (k/=1)print *,8101
 else
   print *,801
 end if 
end function
end
subroutine s1
use m1
 type (x),allocatable:: a01(:)
allocate ( x::a01(5))
do kk=1,5
allocate ( y::a01(kk)%x2(2))
   a01(kk)%x1=1
   a01(kk)%x2(1)%z1=101
   a01(kk)%x2(2)%z1=102
k=0
select type(p=>a01(kk)%x2)
 type is(y)
   p(1)%y1=201
   p(2)%y1=202
   k=1
end select
if (k/=1)print *,101
if (any(ubound(a01(kk)%x2)/=2))print *,301
if (   (a01(kk)%x1/=1)) print *,201
if (a01(kk)%x2(1)%z1/=101) print *,211
if (a01(kk)%x2(2)%z1/=102) print *,212
k=0
select type(p=>a01(kk)%x2)
 type is(y)
  if (   (p(1)%y1/=201)) print *,202
  if (   (p(2)%y1/=202)) print *,203
   k=1
end select
if (k/=1)print *,102
end do

a01=f(a01)

do kk=1,5
if (   (a01(kk)%x1/=1000+1)) print *,9201
if (a01(kk)%x2(1)%z1/=1000+101) print *,9211
if (a01(kk)%x2(2)%z1/=1000+102) print *,9212
k=0
select type(p=>a01(kk)%x2)
 type is(y)
  if (   (p(1)%y1/=1000+201)) print *,9202
  if (   (p(2)%y1/=1000+202)) print *,9203
   k=1
end select
if (k/=1)print *,9102
if (any(lbound(a01(kk)%x2)/=1))print *,9312
if (any(ubound(a01(kk)%x2)/=2))print *,9302
end do
end
do k=1,1
call s1
end do
print *,'pass'
end
