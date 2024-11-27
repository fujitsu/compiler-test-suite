integer a(10,10)
integer b(10,10)
!$OMP parallel reduction(+:a) private(b)
a=1
!$OMP endparallel
!$OMP parallel private(a) reduction(+:b)
a=1
!$OMP endparallel
!$OMP parallel reduction(+:b) private(a)
a=1
!$OMP endparallel
!$OMP parallel private(b) reduction(+:a)
a=1
!$OMP endparallel
end
