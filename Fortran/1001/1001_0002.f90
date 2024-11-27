integer a(10,10)
integer b(10,10)
!$OMP parallel reduction(+:a) firstprivate(b)
a=1
!$OMP endparallel
!$OMP parallel firstprivate(a) reduction(+:b)
a=1
!$OMP endparallel
!$OMP parallel reduction(+:b) firstprivate(a)
a=1
!$OMP endparallel
!$OMP parallel firstprivate(b) reduction(+:a)
a=1
!$OMP endparallel
end
