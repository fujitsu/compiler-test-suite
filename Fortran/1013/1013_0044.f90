type t1
  integer::i,j
end type
type(t1)::a
!$omp threadprivate(a)
!$omp parallel
  a%i=0
  a%j=0
!$omp single
  a%i=1
  a%j=2
!$omp end single copyprivate(a)
  if (a%i /= 1 .or. a%j /= 2) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
