program MaiN
real,allocatable::aA(:)
real b(1,1),c(1,1)
data b/1./,c/1./
allocate(aA(10))
print*,matmul(b,c)
call sUb(10)
end

subroutine sUb(n)
real Dd(n)
Dd=1
print*,Dd(1)
end
