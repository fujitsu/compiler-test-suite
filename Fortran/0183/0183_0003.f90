complex :: c1
complex,allocatable :: c2(:)
integer,allocatable :: k2(:)
real:: r
integer::kk
c1=(1,2)
r=1
kk=1
allocate(c2(1),source=cmplx([r],1.0))
allocate(k2(1),source=[kk])
print *,'pass'
end

