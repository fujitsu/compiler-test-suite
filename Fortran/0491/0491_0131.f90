module m1
type x
   integer:: x1=1
end type
type,extends(x):: xx
   integer:: x2=2
end type

type y
  integer::y1=3
  class(x),allocatable::y2
end type
  type (y)::v2

end
use m1

call omp_set_num_threads(1)
!$omp parallel shared(v2)

allocate( xx:: v2%y2 )

!$omp end parallel 

print *,'pass'
end
