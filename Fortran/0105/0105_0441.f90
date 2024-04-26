complex(KIND=8)::A(2,2,2),B(2,2),C(2,2)
data A(1,:,:)/1,2,3,4/
data B/11,12,13,14/
C=MATMUL(A(1,:,:),B)
if (any(abs((/C/)-(/ 47,70,55,82 /))>0.001))print *,'error'

print *,'pass'
end
