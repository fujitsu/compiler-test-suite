real(8)::m1(2,1),m2(1),r(2)
r=huge(0._8)
m1=huge(0._8)
m2=1._8
r=r-matmul(m1,m2)+matmul(m1,m2)
if (any(abs(r-huge(0._8))>1.E+300_8))print *,'error-1'
print *,'pass'
end
