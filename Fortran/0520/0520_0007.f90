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
if (.not.allocated(a11))print *,202
if (any(shape(a11)/=2))print *,203
a21=a22
if (.not.allocated(a21))print *,212
if (any(shape(a21)/=2))print *,213
deallocate(a11,a21)

!$omp parallel private(a11,a12,a21,a22)

a11=a12
if (.not.allocated(a11))print *,302
if (any(shape(a11)/=2))print *,303
a21=a22
if (.not.allocated(a21))print *,312
if (any(shape(a21)/=2))print *,313

!$omp end parallel
end subroutine
subroutine ss(a11,a12,a21,a22)
type (x),allocatable::a11(:),a12(:)
type (y),allocatable::a21(:),a22(:)

!$omp parallel private(a11,a12,a21,a22)

a11=a12
if (.not.allocated(a11))print *,402
if (any(shape(a11)/=2))print *,403
a21=a22
if (.not.allocated(a21))print *,412
if (any(shape(a21)/=2))print *,413

!$omp end parallel
end subroutine
end
use m1
type (x),allocatable::a11(:),a12(:)
type (y),allocatable::a21(:),a22(:)

allocate( a11(3) , a12(2) , a21(3) , a22(2))
allocate( a11(3)%x1(2) , a12(2)%x1(2) , a21(3)%y1(2) , a22(2)%y1(2))

call  s(a11,a12,a21,a22)
deallocate(a12,a22)
allocate( a11(3) , a12(2) , a21(3) , a22(2))
allocate( a11(3)%x1(2) , a12(2)%x1(2) , a21(3)%y1(2) , a22(2)%y1(2))
call  ss(a11,a12,a21,a22)

print *,'pass'
end

