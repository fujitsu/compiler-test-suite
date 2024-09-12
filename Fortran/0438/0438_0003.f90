module m1
 type z
   integer:: z1
 end type
 type x
   integer:: x1
   class(z),allocatable::x2(:)
 end type
 type,extends(x):: y
   integer:: y1
 end type
end
subroutine s1
use m1
 class(x),allocatable:: a01(:),a02(:),a03(:)
allocate ( y:: a01(2))
allocate ( a01(2)%x2(2))
   a01%x1=1
   a01(2)%x2(1)%z1=101
   a01(2)%x2(2)%z1=102
k=0
select type(a01)
 type is(y)
   a01%y1=2
   k=1
end select
if (k/=1)print *,101
if (any(ubound(a01)/=2))print *,301
a02=a01
if (any(a02%x1/=1)) print *,201
if (a01(2)%x2(1)%z1/=101) print *,211
if (a01(2)%x2(2)%z1/=102) print *,212
if (a02(2)%x2(1)%z1/=101) print *,221
if (a02(2)%x2(2)%z1/=102) print *,222
k=0
select type(a02)
 type is(y)
  if (any(a02%y1/=2)) print *,202
  a02%y1=3
   k=1
end select
if (k/=1)print *,102
if (any(lbound(a02)/=1))print *,312
if (any(ubound(a02)/=2))print *,302
a01=a02
if (a01(2)%x2(1)%z1/=101) print *,231
if (a01(2)%x2(2)%z1/=102) print *,232
if (a02(2)%x2(1)%z1/=101) print *,241
if (a02(2)%x2(2)%z1/=102) print *,242
k=0
select type(a02)
 type is(y)
  if (any(a02%y1/=3)) print *,203
   k=1
end select
if (k/=1)print *,103
if (any(lbound(a02)/=1))print *,313
if (any(ubound(a02)/=2))print *,303
k=0
select type(a01)
 type is(y)
  if (any(a01%y1/=3)) print *,204
   k=1
end select
if (k/=1)print *,104
if (any(lbound(a01)/=1))print *,314
if (any(ubound(a01)/=2))print *,304
allocate ( y:: a03(2:4))
allocate ( a03(4)%x2(2))
   a03(4)%x2(1)%z1=201
   a03(4)%x2(2)%z1=202
k=0
select type(a03)
 type is(y)
   a03%x1=11
   a03%y1=12
   k=1
end select
if (k/=1)print *,105
a02=a03
if (any(a02%x1/=11)) print *,206
if (a02(4)%x2(1)%z1/=201) print *,251
if (a02(4)%x2(2)%z1/=202) print *,252
if (a03(4)%x2(1)%z1/=201) print *,261
if (a03(4)%x2(2)%z1/=202) print *,262
k=0
select type(a02)
 type is(y)
  if (any(a02%y1/=12)) print *,207
  a02%y1=13
   k=1
end select
if (k/=1)print *,107
if (any(lbound(a02)/=2))print *,317
if (any(ubound(a02)/=4))print *,307
end
call s1
print *,'pass'
end
