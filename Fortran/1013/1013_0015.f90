type t1
  integer::i,j
end type
type(t1),pointer::a(:)
type(t1),target::t(2)
!$omp threadprivate(a)
t%i=1
t%j=2
a=>t
!$omp parallel copyin(a)
  if (any(a%i /= 1) .or. any(a%j /= 2)) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
