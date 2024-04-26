subroutine s1
real(4),parameter:: a1(3,4)=&
  reshape([(k,k=1,24)],[3,4])
real(4),parameter:: a2(4,3)=&
  reshape([(k,k=1,24)],[4,3])
real(4),parameter:: a3(3)=&
  reshape([(k,k=1,24)],[3])
real(4),parameter:: a4(4)=&
  reshape([(k,k=1,24)],[4])

real(4),parameter:: x1(3,3)=matmul(a1,a2)
real(4),parameter:: x2(3)=matmul(a4,a2)
real(4),parameter:: x3(4)=matmul(a3,a1)
real(4)          :: y1(3,3),y2(3),y3(4)
y1=matmul(a1,a2)
y2=matmul(a4,a2)
y3=matmul(a3,a1)
if (any(abs(x1-y1)>0.00001))print *,101
if (any(abs(x2-y2)>0.00001))print *,102
if (any(abs(x3-y3)>0.00001))print *,103
end
call s1
print *,'pass'
end
