type t1
  integer::i,j
end type
type(t1),pointer::a
type(t1),target::t
!$omp threadprivate(a)
t%i=1
t%j=2
a=>t
!$omp parallel copyin(a)
  if (a%i /= 1 .or. a%j /= 2) then
    print *,'ng 101',a
  endif
!$omp end parallel
print *,'pass'    
end
