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
 type (x):: a01(2),a02(2),a03(2)
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
a02=a01
if (any(a02%x1/=1)) print *,201
if (a01(2)%x2(1)%z1/=101) print *,211
if (a01(2)%x2(2)%z1/=102) print *,212
if (a02(2)%x2(1)%z1/=101) print *,221
if (a02(2)%x2(2)%z1/=102) print *,222
k=0
select type(p=>a02(2)%x2)
 type is(y)
  if (   (p(1)%y1/=201)) print *,202
  if (   (p(2)%y1/=202)) print *,203
  p(1)%y1=3
  p(2)%y1=4
   k=1
end select
if (k/=1)print *,102
if (any(lbound(a02(2)%x2)/=1))print *,312
if (any(ubound(a02(2)%x2)/=2))print *,302
a01=a02
if (a01(2)%x2(1)%z1/=101) print *,231
if (a01(2)%x2(2)%z1/=102) print *,232
if (a02(2)%x2(1)%z1/=101) print *,241
if (a02(2)%x2(2)%z1/=102) print *,242
k=0
select type(p=>a02(2)%x2)
 type is(y)
  if (   (p(1)%y1/=3)) print *,2031
  if (   (p(2)%y1/=4)) print *,2032
   k=1
end select
if (k/=1)print *,103
if (any(lbound(a02)/=1))print *,313
if (any(ubound(a02)/=2))print *,303
k=0
select type(p=>a01(2)%x2)
 type is(y)
  if (   (p(1)%y1/=3)) print *,2231
  if (   (p(2)%y1/=4)) print *,2232
   k=1
end select
if (k/=1)print *,1031
k=0
select type(p=>a01(2)%x2)
 type is(y)
  if (   (p(1)%y1/=3)) print *,3033
  if (   (p(2)%y1/=4)) print *,3034
   k=1
end select
if (k/=1)print *,1042
if (any(lbound(a01(2)%x2)/=1))print *,314
if (any(ubound(a01(2)%x2)/=2))print *,304
allocate ( y:: a03(2)%x2(2:4))
a03%x1=11
   a03(2)%x2(2)%z1=202
   a03(2)%x2(3)%z1=203
   a03(2)%x2(4)%z1=204
k=0
select type(p=>a03(2)%x2)
 type is(y)
   p(2)%y1=302
   p(3)%y1=303
   p(4)%y1=304
   k=1
end select
if (k/=1)print *,105
a02=a03
if (any(a02%x1/=11)) print *,206
if (a02(2)%x2(2)%z1/=202) print *,252
if (a02(2)%x2(3)%z1/=203) print *,253
if (a02(2)%x2(4)%z1/=204) print *,254
if (a03(2)%x2(2)%z1/=202) print *,262
if (a03(2)%x2(3)%z1/=203) print *,263
if (a03(2)%x2(4)%z1/=204) print *,264
k=0
select type(p=>a02(2)%x2)
 type is(y)
  if (   (p(2)%y1/=302)) print *,2072
  if (   (p(3)%y1/=303)) print *,2073
  if (   (p(4)%y1/=304)) print *,2074
   k=1
end select
if (k/=1)print *,107
if (any(lbound(a02(2)%x2)/=2))print *,317
if (any(ubound(a02(2)%x2)/=4))print *,307
end
call s1
print *,'pass'
end
