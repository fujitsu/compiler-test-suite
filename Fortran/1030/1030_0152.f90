real(8)::m1(2,1),m2(1),r(2),n1(2,1),n2(1)
r=huge(0._8)
m1=huge(0._8)
m2=1._8
n1=-huge(0._8)
n2=1._8
r=(matmul(m1,m2)+matmul(n1,n2))+r
if (any(abs(r-huge(0._8))>1.E+300_8))print *,'error-1'
print *,'pass'
end
