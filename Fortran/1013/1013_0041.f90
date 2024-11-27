type t1
  integer::i,j
end type
type(t1),pointer::a
type(t1),target::t
!$omp threadprivate(a)
  t%i=0
  t%j=0
!$omp parallel
!$omp single
  t%i=1
  t%j=2
  a=>t
!$omp end single copyprivate(a)
  if (a%i /= 1 .or. a%j /= 2) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'
end
