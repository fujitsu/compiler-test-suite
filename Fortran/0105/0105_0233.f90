complex(8)::m1(2,2),m2(2),r(2),alpha
m1(:,1)=huge(0._8)
m1(:,2)=-huge(0._8)
m2=1
alpha=2.0_8
r=alpha*matmul(m1,m2)
if (any(abs(r)>1.797693134862316E+307_8))print *,'error-1'
print *,'pass'
end
