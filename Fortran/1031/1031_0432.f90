REAL(KIND=8)::A(2,2,2),B(2,2),C(2,2),D(2,2)
data C/1,2,3,4/
data B/11,12,13,14/
data A(1,:,:)/11,12,13,14/
D=A(1,:,:)+MATMUL(TRANSPOSE(C),B)
if (any(abs((/D/)-(/ 46,93,54,109 /))>0.001))print *,'error'

print *,'pass'
end
