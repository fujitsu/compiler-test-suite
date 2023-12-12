module m1
 type x
   integer::x1
   integer::x2
 end type
 type(x)::v(3)
end
subroutine s1
use m1
v=[x(11,12),x(21,22),x(31,32)]

write(1,*) (v(k),k=1,3)
write(1,*) v,v
end
call s1
call chk
print *,'OK'
end
subroutine chk
integer z(6),z1(6),z2(6)
rewind 1
read(1,*) z
if (any(z/=[11,12,21,22,31,32])) print *,101
read(1,*) z1,z2
if (any(z1/=[11,12,21,22,31,32])) print *,111
if (any(z2/=[11,12,21,22,31,32])) print *,112
end


