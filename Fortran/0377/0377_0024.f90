integer, allocatable :: iac(:)
real   , allocatable :: rac(:)
complex, allocatable :: cac(:)

integer,parameter :: array_size1 = 5, array_size2 = 15

allocate(cac(array_size1))

cac = [(cmplx(i, real(i)) , i = 1, array_size1) ]

deallocate(cac)

allocate(cac(array_size2))
allocate(rac(array_size2))
allocate(iac(array_size2))

cac = [complex :: [(cmplx(i, real(i)) , i = 1, array_size1)], [(int(cmplx(i, real(i))), i = 1, array_size1 )], [(real(cmplx(i, real(i))), i = 1, array_size1)] ]

if (sum(int(cac)).ne.size(cac) * 3) print *,'error'

rac = [real    :: [(cmplx(i, real(i)) , i = 1, array_size1)], [(int(cmplx(i, real(i))), i = 1, array_size1 )], [(real(cmplx(i, real(i))), i = 1, array_size1)] ]

if (sum(int(rac)).ne.size(rac) * 3) print *,'error'

iac = [integer :: [(cmplx(i, real(i)) , i = 1, array_size1)], [(int(cmplx(i, real(i))), i = 1, array_size1 )], [(real(cmplx(i, real(i))), i = 1, array_size1)] ]

if (sum(iac).ne.size(iac) * 3) print *,'error'

print *,'pass'

end
