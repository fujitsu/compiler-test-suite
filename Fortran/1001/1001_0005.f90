integer a(10,10)
integer b(10,10)
!$OMP parallel shared(a) private(b)
a=1
!$OMP endparallel
!$OMP parallel private(a) shared(b)
a=1
!$OMP endparallel
!$OMP parallel shared(b) private(a)
a=1
!$OMP endparallel
!$OMP parallel private(b) shared(a)
a=1
!$OMP endparallel
end
