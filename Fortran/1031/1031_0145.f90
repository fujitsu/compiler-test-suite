REAL(KIND=8)::A(2,2),B(2,2),C(2)
data C/3,4/
data B/11,12,13,14/
A(1,:)=MATMUL(B,C)
if (any(abs((/A(1,:)/)-(/ 85,92 /))>0.001))print *,'error'

print *,'pass'
end
