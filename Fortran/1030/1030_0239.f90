real(8)::m1(2,1),m2(1),r(2),beta
common /x/dummy,beta
integer*1 dummy
beta=2.0
r=(/2,3/)
m1(1,1)=4
m1(2,1)=5
m2=6
r=matmul(m1,m2)+beta*r
if (any(abs(r-(/28,36/))>0.00001_8))print *,'error-1'
print *,'pass'
end
