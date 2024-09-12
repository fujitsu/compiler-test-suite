subroutine s
real,parameter,dimension(3,3)::a1=reshape([(i,i=1,9)],[3,3])
real,parameter,dimension(3,3)::a2=reshape([(i,i=1,9)],[3,3])
real,parameter,dimension(3,3)::a3=matmul(a1,a2)
real,dimension(3,3)::a4=matmul(a1,a2)
real,dimension(3,3)::b1,b2,b3,c1,c2
b1=a1
b2=a2
c1=matmul(a1,a2)
c2=matmul(b1,b2)
if (any(a3/=c1))print *,101,a3,c1
if (any(a3/=c2))print *,102,a3,c2
end
call s
print *,'pass'
end

