integer,allocatable::a1(:)
allocate(a1(2))
a1=10
!$omp parallel reduction(*:a1)
a1 = a1 * 2
!$omp end parallel
write(7,*) a1
print *,'pass'
end
