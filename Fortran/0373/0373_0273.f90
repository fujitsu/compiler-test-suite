real a1(2,3),a2(2),a3(3),a4(3:2,2)
real b1(3,2),b2(2,2)
data a1/6*1./,a2/2*1./,a3/3*1./
data b1/6*1./
a4=1.
b2=matmul(a1,b1)
a3=matmul(a2,a1)
a2=matmul(a1,a3)
call sub(a1,a2,a3,a4,2,3)
print*,b2(1,1)
end
subroutine sub(a1,a2,a3,a4,n,m)
real a1(n,m),a2(n),a3(m),a4(m:n,m:n),a5(m:n)
r1=sum(a1)
a3=sum(a1,1)
a2=sum(a1,2)
a5=sum(a4,1)
print*,r1,a5
end subroutine
