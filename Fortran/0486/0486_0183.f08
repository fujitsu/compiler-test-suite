complex :: c1
complex,allocatable :: c2
c1=(1,2)
allocate(c2,source=cmplx(c1%re,1.0))
print *,'pass'
end
