type :: t1
class(t1), pointer :: c1
end type t1
type, extends(t1) :: t2
     integer::x1=1
end type
type,extends(t2)::t3
end type
  class(t3),allocatable::v
  allocate(v)
!$omp parallel private(v)
  if (v%x1/=1) print *,v%x1
!$omp end parallel
print *,'pass'
end
