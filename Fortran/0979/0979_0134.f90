integer,allocatable::a(:)
allocate(a(2))
!$omp parallel firstprivate(a)
a(1)=1
a(2)=2
!$omp endparallel
print *,"pass"
end
