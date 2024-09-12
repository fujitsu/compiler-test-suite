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
end
subroutine s1
use m1
 type (x):: a01(2)
allocate ( y::a01(2)%x2(2))
   a01%x1=1
   a01(2)%x2(1)%z1=101
   a01(2)%x2(2)%z1=102
k=0
select type(p=>a01(2)%x2)
 type is(y)
   p(1)%y1=201
   p(2)%y1=202
   k=1
end select
if (k/=1)print *,101
if (any(ubound(a01(2)%x2)/=2))print *,301
a01(1:1)=a01(2:2)
if (any(a01%x1/=1)) print *,201
if (a01(2)%x2(1)%z1/=101) print *,211
if (a01(2)%x2(2)%z1/=102) print *,212
if (a01(1)%x2(1)%z1/=101) print *,221
if (a01(1)%x2(2)%z1/=102) print *,222
k=0
select type(p=>a01(2)%x2)
 type is(y)
  if (   (p(1)%y1/=201)) print *,202
  if (   (p(2)%y1/=202)) print *,203
   k=1
end select
if (k/=1)print *,102
k=0
select type(p=>a01(1)%x2)
 type is(y)
  if (   (p(1)%y1/=201)) print *,202
  if (   (p(2)%y1/=202)) print *,203
   k=1
end select
if (k/=1)print *,102
if (any(lbound(a01(2)%x2)/=1))print *,312
if (any(ubound(a01(2)%x2)/=2))print *,302
deallocate( a01(2)%x2)
allocate ( y::a01(2)%x2(5:7))
   a01%x1=1
   a01(2)%x2(5)%z1=101
   a01(2)%x2(6)%z1=102
   a01(2)%x2(7)%z1=103
k=0
select type(p=>a01(2)%x2)
 type is(y)
   p(5)%y1=201
   p(6)%y1=202
   p(7)%y1=203
   k=1
end select
if (k/=1)print *,5101
if (any(ubound(a01(2)%x2)/=7))print *,5301
a01(1:1)=a01(2:2)
if (any(a01%x1/=1)) print *,5201
if (a01(2)%x2(5)%z1/=101) print *,5211
if (a01(2)%x2(6)%z1/=102) print *,5212
if (a01(2)%x2(7)%z1/=103) print *,5213
if (a01(1)%x2(5)%z1/=101) print *,5221
if (a01(1)%x2(6)%z1/=102) print *,5222
if (a01(1)%x2(7)%z1/=103) print *,5223
k=0
select type(p=>a01(2)%x2)
 type is(y)
  if (   (p(5)%y1/=201)) print *,6202
  if (   (p(6)%y1/=202)) print *,6203
  if (   (p(7)%y1/=203)) print *,6203
   k=1
end select
if (k/=1)print *,5102
k=0
select type(p=>a01(1)%x2)
 type is(y)
  if (   (p(5)%y1/=201)) print *,7202
  if (   (p(6)%y1/=202)) print *,7203
  if (   (p(7)%y1/=203)) print *,7204
   k=1
end select
if (k/=1)print *,102
if (any(lbound(a01(2)%x2)/=5))print *,8312
if (any(ubound(a01(2)%x2)/=7))print *,8302
if (any(lbound(a01(1)%x2)/=5))print *,8312
if (any(ubound(a01(1)%x2)/=7))print *,8302
end
call s1
print *,'pass'
end
