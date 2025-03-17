subroutine s1
real(8)::a1(3,3),a2(3,3)
real(8)::b1(3,3),b2(3,3)
real(8)::z(3,3)
a1=reshape((/(i,i=01,09)/),(/3,3/))
a2=reshape((/(i,i=11,19)/),(/3,3/))
b1=reshape((/(i,i=21,29)/),(/3,3/))
b2=reshape((/(i,i=31,39)/),(/3,3/))
z=matmul(a1,a2)-matmul(transpose(b1),b2)
if (any(abs((/z/)-(/&
-1964,-2216,-2468,-2126,-2396,-2666,-2288,-2576,-2864&
/))>0.001))print *,'error'
end
call s1
print *,'pass'
end
