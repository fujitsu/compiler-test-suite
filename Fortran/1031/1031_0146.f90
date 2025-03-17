REAL(KIND=8)::A(2,2),B(2,2),C(2),D(2)
data C/3,4/
data A(1,:)/5,6/
data B/11,12,13,14/
D=A(1,:)+MATMUL(B,C)
if (any(abs((/D/)-(/ 90,98 /))>0.001))print *,'error'

print *,'pass'
end
