module m1
  type y2
    integer,dimension(3)::x21
  end type
  type y3
    integer,dimension(3)::x31
    type(y2),allocatable:: x32
    integer,dimension(3)::x33
  end type
end
subroutine s4
use m1
  type(y3),allocatable::v
allocate(v)
!$omp parallel private(v)
!$omp end parallel
end
call s4
print *,'pass'
end
