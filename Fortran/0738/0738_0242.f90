type xx
  integer(8),allocatable :: e(:)
end type

integer,allocatable    :: a(:)
real(4),allocatable    :: b(:)
integer,dimension(3:3) :: d

type(xx) :: v

allocate(a(2:3))
allocate(b(2:3))
a=(/7,8/)
b=(/7.0,8.0/)

v = xx((b-1)) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(v%e/=(/6,7/))) write(6,*) "NG"
v = xx(b) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/3/))) write(6,*) "NG"
  if (any(v%e/=(/7,8/))) write(6,*) "NG"
v = xx(-a) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(v%e/=(/-7,-8/))) write(6,*) "NG"
v = xx((a)) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(v%e/=(/7,8/))) write(6,*) "NG"
v = xx(a(2:3)) 
  if (.not.allocated(v%e)) write(6,*) "NG"
  if (any(lbound(v%e)/=(/1/))) write(6,*) "NG"
  if (any(ubound(v%e)/=(/2/))) write(6,*) "NG"
  if (any(v%e/=(/7,8/))) write(6,*) "NG"

 print *,'pass'
end
