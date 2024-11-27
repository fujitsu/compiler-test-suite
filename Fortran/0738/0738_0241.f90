type xx
  integer,allocatable :: e(:)
end type

integer,allocatable    :: a(:)
real(4),allocatable    :: b(:)
integer,dimension(3:3) :: d

type(xx) :: v

allocate(a(2:2))
allocate(b(2:2))
a=8
b=8.0

v = xx((b-1)) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(v%e/=(/7/))) write(6,*) "NG"
v = xx(b) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(v%e/=(/8/))) write(6,*) "NG"
v = xx(-a) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(v%e/=(/-8/))) write(6,*) "NG"
v = xx((a)) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(v%e/=(/8/))) write(6,*) "NG"
v = xx(a(2:2)) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(v%e/=(/8/))) write(6,*) "NG"

 print *,'pass'
end
