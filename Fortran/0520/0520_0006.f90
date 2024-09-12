module m1
type x
  integer,allocatable::x1(:)
end type
contains
subroutine s(a11,a12)
type (x),allocatable::a11(:),a12(:)

a11=a12

!$omp parallel private(a11,a12)

a11=a12

!$omp end parallel
end subroutine
end
print *,'pass'
end

