Real*2::a(2,3)=12
Real*8::b(3,2)=16
Real*4::c(3,2)=16
COMPLEX(2)::a1(2,3)=12
COMPLEX(kind=4)::b1(3,2)=16
COMPLEX(KIND=8)::c1(3,2)=16
integer::k
k = kind(matmul(a,b))
if(k /=8)print*,"101"
k = kind(matmul(a,c))
if(k /=4)print*,"102"
k = kind(matmul(a1,b1))
if(k /=4)print*,"103"
k = kind(matmul(a1,c1))
if(k /=8)print*,"104"

print*,"PASS"
end

