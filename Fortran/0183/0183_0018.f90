complex,allocatable :: c1,c2
integer,allocatable :: k2
real:: r=1
allocate(c1,mold=cmplx(r,1.0))
allocate(c2,source=cmplx(r,1.0))
print *,'pass'
end

