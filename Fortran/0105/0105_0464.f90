complex(KIND=8)::A(2,2),B(2,2),C(2,2,2)
data C(:,:,1)/1,2,3,4/
data B/11,12,13,14/
A=MATMUL(B,C(:,:,1))
if (any(abs((/A/)-(/ 37,40,85,92 /))>0.001))print *,'error'

print *,'pass'
end

