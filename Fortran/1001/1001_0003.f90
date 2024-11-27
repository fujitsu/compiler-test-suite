integer a(10,10)
integer b(10,10)
!$OMP parallel shared(a) firstprivate(b)
a=1
!$OMP endparallel
!$OMP parallel firstprivate(a) shared(b)
a=1
!$OMP endparallel
!$OMP parallel shared(b) firstprivate(a)
a=1
!$OMP endparallel
!$OMP parallel firstprivate(b) shared(a)
a=1
!$OMP endparallel
end
