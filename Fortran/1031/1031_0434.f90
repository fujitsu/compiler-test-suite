REAL(KIND=8)::A(2,2,2),B(2,2),C(2,2)
data A(1,:,:)/1,2,3,4/
data B/11,12,13,14/
C=MATMUL(TRANSPOSE(B),A(1,:,:))
if (any(abs((/C/)-(/ 35,41,81,95 /))>0.001))print *,'error'

print *,'pass'
end
