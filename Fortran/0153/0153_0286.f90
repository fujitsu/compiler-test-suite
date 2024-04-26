module m1
integer,parameter::z1(*)=[1,2,3,4],z2(*)=[11,12,13,14,15,16,17,18]
 type t1(knd)
   integer,kind::knd
   integer(knd):: x(knd)
 end type
end

subroutine s1
use m1
type(t1(knd=4)):: v1
type(t1(knd=8)):: v2
namelist /nam1/v1
namelist /nam2/v2

v1%x=z1
v2%x=z2

write(11,nam1)
write(12,nam2)
call chk1
call chk2
end
call s1
print *,'pass'
end
subroutine chk1
use m1
type(t1(knd=4)):: v1
namelist /nam1/v1
rewind 11
read(11,nam1)
if (any(v1%x/=z1)) print *,301
end
subroutine chk2
use m1
type(t1(knd=8)):: v2
namelist /nam2/v2
rewind 12
read(12,nam2)
if (any(v2%x/=z2)) print *,303
end
