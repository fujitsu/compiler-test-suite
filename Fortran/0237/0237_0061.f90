subroutine s1
complex(16),parameter:: a1(3,4)=cmplx(&
  reshape([(k,k=1,24)],[3,4]), reshape([(k,k=1,24)],[3,4]))
complex(16),parameter:: a2(4,3)=cmplx(&
  reshape([(k,k=1,24)],[4,3]), reshape([(k,k=1,24)],[4,3]))
complex(16),parameter:: a3(3)=cmplx(&
  reshape([(k,k=1,24)],[3]), reshape([(k,k=1,24)],[3]))
complex(16),parameter:: a4(4)=cmplx(&
  reshape([(k,k=1,24)],[4]), reshape([(k,k=1,24)],[4]))

complex(16),parameter:: x1(3,3)=matmul(a1,a2)
complex(16),parameter:: x2(3)=matmul(a4,a2)
complex(16),parameter:: x3(4)=matmul(a3,a1)
complex(16)          :: y1(3,3),y2(3),y3(4)
y1=matmul(a1,a2)
y2=matmul(a4,a2)
y3=matmul(a3,a1)
if (any(abs(x1-y1)>0.00001))print *,101
if (any(abs(x2-y2)>0.00001))print *,102
if (any(abs(x3-y3)>0.00001))print *,103
end
subroutine s2
complex(16),parameter:: a1(30,40)=cmplx(&
  reshape([(k,k=1,2400)],[30,40]), reshape([(k,k=1,2400)],[30,40]))
complex(16),parameter:: a2(40,30)=cmplx(&
  reshape([(k,k=1,2400)],[40,30]), reshape([(k,k=1,2400)],[40,30]))

complex(16),parameter:: x1(30,30)=matmul(a1,a2)
complex(16)          :: y1(30,30)
y1=matmul(a1,a2)
if (any(abs(x1-y1)>0.00001))print *,201
end
call s1
call s2
print *,'pass'
end
