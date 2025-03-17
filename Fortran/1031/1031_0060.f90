subroutine s1(a1,a2,b1,b2)
real(8)::a1(3,3),a2(3,3)
real(8)::b1(3,3),b2(3,3)
real(8)::z(3,3)
z=(matmul(a1,a2)-matmul(a1,a2))+(matmul(b1,b2)-matmul(a1,a2))
if (any(abs((/z/)-(/&
2160,2220,2280,2340,2400,2460,2520,2580,2640&
/))>0.001))print *,'error'
end
real(8)::a1(3,3),a2(3,3)
real(8)::b1(3,3),b2(3,3)
a1=reshape((/(i,i=01,09)/),(/3,3/))
a2=reshape((/(i,i=11,19)/),(/3,3/))
b1=reshape((/(i,i=21,29)/),(/3,3/))
b2=reshape((/(i,i=31,39)/),(/3,3/))
call s1(a1,a2,b1,b2)
print *,'pass'
end
