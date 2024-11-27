type t1
  integer::i,j
end type
type(t1)::a(2)
!$omp threadprivate(a)
a%i=1
a%j=2
!$omp parallel copyin(a)
  if (any(a%i /= 1) .or. any(a%j /= 2)) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
