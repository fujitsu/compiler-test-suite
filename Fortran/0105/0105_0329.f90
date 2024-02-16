complex(8)::m1(2,1),m2(1),r(2),alpha
common /x/dummy,alpha
integer*1 dummy
r=(/2,3/)
m1(1,1)=4
m1(2,1)=5
m2=6
alpha=2.0
r=alpha*matmul(m1,m2)+r
if (any(abs(r-(/50,63/))>0.00001_8))print *,'error-1'
print *,'pass'
end
