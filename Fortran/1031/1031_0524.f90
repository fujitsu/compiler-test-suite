subroutine s1(a1,a2,b1,b2,z)
real(8)::a1(3,3),a2(3,3)
real(8)::b1(3,3),b2(3,3)
real(8)::z(3,3)
z=-matmul(a1,a2)-matmul(a1,a2)-matmul(b1,b2)-z
if (any(abs((/z/)-(/&
-2710,-2878,-3046,-2998,-3193,-3388,-3286,-3508,-3730&
/))>0.001))print *,'error'
end
real(8)::a1(3,3),a2(3,3)
real(8)::b1(3,3),b2(3,3)
real(8)::z(3,3)
a1=reshape((/(i,i=01,09)/),(/3,3/))
a2=reshape((/(i,i=11,19)/),(/3,3/))
b1=reshape((/(i,i=21,29)/),(/3,3/))
b2=reshape((/(i,i=31,39)/),(/3,3/))
z=100
call s1(a1,a2,b1,b2,z)
print *,'pass'
end
