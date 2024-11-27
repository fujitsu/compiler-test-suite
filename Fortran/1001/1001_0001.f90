integer a(10,10)
integer b(10,10)
!$OMP parallel shared(a) reduction(+:b)
a=1
!$OMP endparallel
!$OMP parallel reduction(+:a) shared(b)
a=1
!$OMP endparallel
!$OMP parallel shared(b) reduction(+:a)
a=1
!$OMP endparallel
!$OMP parallel reduction(+:b) shared(a)
a=1
!$OMP endparallel
end
