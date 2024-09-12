module m1
contains
subroutine s1
real(4),parameter::x=20., g=0.0281
real(4):: x1=x,y1=g
real(8):: x2=x,y2=g
real(16):: x3=x,y3=g
intrinsic :: erfc_scaled
write(1,*),kind(erfc_scaled(x1))
write(1,*)kind(erfc_scaled(x2))
write(1,*)kind(erfc_scaled(x3))
end subroutine
end
use m1
call s1
rewind 1
read(1,*) k;if (k/=4) print *,101
read(1,*) k;if (k/=8) print *,102
read(1,*) k;if (k/=16) print *,103
print *,'pass'
end
