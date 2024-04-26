subroutine s1
real(8),parameter:: a1(3,4)= reshape([(k,k=1,24)],[3,4])
real(8),parameter:: a2(4,3)= reshape([(k,k=1,24)],[4,3])
real(8),parameter:: a3(3)= reshape([(k,k=1,24)],[3])
real(8),parameter:: a4(4)= reshape([(k,k=1,24)],[4])
real(4),parameter:: b1(3,4)= reshape([(k,k=1,24)],[3,4])
real(4),parameter:: b2(4,3)= reshape([(k,k=1,24)],[4,3])
real(4),parameter:: b3(3)= reshape([(k,k=1,24)],[3])
real(4),parameter:: b4(4)= reshape([(k,k=1,24)],[4])

real(8),parameter:: x1(3,3)=matmul(matrix_a=b1,matrix_b=a2)
real(8),parameter:: x2(3)=matmul(a4,b2)
real(8),parameter:: x3(4)=matmul(a3,matrix_b=a1)
real(8)          :: y1(3,3),y2(3),y3(4)
integer,parameter:: w1=kind(matmul(b1,a2))
integer,parameter:: w2=kind(matmul(a4,b2))
integer,parameter:: w3=kind(matmul(a3,a1))
y1=matmul(b1,a2)
y2=matmul(a4,b2)
y3=matmul(a3,a1)
if (any(abs(x1-y1)>0.00001))print *,101
if (any(abs(x2-y2)>0.00001))print *,102
if (any(abs(x3-y3)>0.00001))print *,103
if (w1/=8)print *,104
if (w2/=8)print *,105
if (w3/=8)print *,106
end
call s1
print *,'pass'
end
