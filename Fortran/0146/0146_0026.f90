module m1
contains
subroutine s1(a1,a2,b1,b2,z)
real(8),target::a1(3,3),a2(3,3)
real(8),target::b1(3,3),b2(3,3)
real(8),target::z(3,3)
z=-matmul(a1,a2)-matmul(a1,a2)-matmul(b1,b2)+z
if (any(abs((/z/)-(/&
-2610,-2778,-2946,-2898,-3093,-3288,-3186,-3408,-3630&
/)-100)>0.001))print *,'error'
end subroutine
end
use m1
real(8),target::a1(3,3),a2(3,3)
real(8),target::b1(3,3),b2(3,3)
real(8),target::z(3,3)
a1=reshape((/(i,i=01,09)/),(/3,3/))
a2=reshape((/(i,i=11,19)/),(/3,3/))
b1=reshape((/(i,i=21,29)/),(/3,3/))
b2=reshape((/(i,i=31,39)/),(/3,3/))
z=100
call s1(a1,a2,b1,b2,z)
print *,'pass'
end

