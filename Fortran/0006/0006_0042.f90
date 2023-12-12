subroutine s1(a1,a2,b1,b2,z)
complex(8)::a1(3,3),a2(3,3)
complex(8)::b1(3,3),b2(3,3)
complex(8)::z(3,3)
a1=-matmul(a1,a2)-z
z=a1
!print *,int(z)
if (any(abs((/z/)-(/&
-250,-286,-322,-286,-331,-376,-322,-376,-430&
/))>0.001))print *,'error'
end
subroutine s2(a1,a2,b1,b2,z)
complex(8)::a1(3,3),a2(3,3)
complex(8)::b1(3,3),b2(3,3)
complex(8)::z(3,3)
a2=-matmul(a1,a2)-z
z=a2
!print *,int(z)
if (any(abs((/z/)-(/&
-250,-286,-322,-286,-331,-376,-322,-376,-430&
/))>0.001))print *,'error'
end
complex(8)::a1(3,3),a2(3,3)
complex(8)::b1(3,3),b2(3,3)
complex(8)::z(3,3)
a1=reshape((/(i,i=01,09)/),(/3,3/))
a2=reshape((/(i,i=11,19)/),(/3,3/))
b1=reshape((/(i,i=21,29)/),(/3,3/))
b2=reshape((/(i,i=31,39)/),(/3,3/))
z=100
call s1(a1,a2,b1,b2,z)
a1=reshape((/(i,i=01,09)/),(/3,3/))
a2=reshape((/(i,i=11,19)/),(/3,3/))
b1=reshape((/(i,i=21,29)/),(/3,3/))
b2=reshape((/(i,i=31,39)/),(/3,3/))
z=100
call s2(a1,a2,b1,b2,z)
print *,'OK'
end

