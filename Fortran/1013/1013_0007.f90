type t1
  integer::i,j
end type
type(t1),allocatable::a
!$omp threadprivate(a)
!$omp parallel
allocate(a)
!$omp end parallel
a%i=1
a%j=2
!$omp parallel copyin(a)
  if (a%i /= 1 .or. a%j /= 2) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end