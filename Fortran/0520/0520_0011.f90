module m1
type x
  integer,allocatable::x1(:)
end type
type y
  integer,pointer   ::y1(:)
end type
contains
subroutine s(a11,a12,a21,a22)
type (x),allocatable::a11(:),a12(:)
type (y),allocatable::a21(:),a22(:)

a11=a12
a21=a22

!$omp parallel private(a11,a12,a21,a22)

a11=a12
a21=a22

!$omp end parallel
end subroutine
end
use m1
type (x),allocatable::a11(:),a12(:)
type (y),allocatable::a21(:),a22(:)

allocate( a11(2) , a12(2) , a21(2) , a22(2))
allocate( a11(2)%x1(2) , a12(2)%x1(2) , a21(2)%y1(2) , a22(2)%y1(2))

call  s(a11,a12,a21,a22)

print *,'pass'
end

