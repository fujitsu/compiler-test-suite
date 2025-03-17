REAL(KIND=8)::A(2,2,2),B(2,2),C(2,2)
data C/1,2,3,4/
data B/11,12,13,14/
A(:,:,1)=MATMUL(C,B)
if (any(abs((/A(:,:,1)/)-(/ 47,70,55,82 /))>0.001))print *,'error'

print *,'pass'
end
