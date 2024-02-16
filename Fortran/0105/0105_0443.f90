complex(KIND=8)::A(2,2,2),B(2,2),C(2,2)
data A(1,:,:)/1,2,3,4/
data B/11,12,13,14/
C=MATMUL(B,A(1,:,:))
if (any(abs((/C/)-(/ 37,40,85,92 /))>0.001))print *,'error'

print *,'pass'
end

