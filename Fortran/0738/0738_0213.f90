integer,dimension(-10:-1),parameter::b=(/(i,i=-10,-1,1)/)
integer,allocatable,dimension(:)::bb
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a

  a=x(b)

  if (.not.allocated(a%x1)) write(6,*) "NG"
  if (any(a%x1/=(/(i,i=-10,-1,1)/))) write(6,*) "NG"
  if (any(lbound(a%x1)/=(/1/))) write(6,*) "NG"
  if (any(ubound(a%x1)/=(/10/))) write(6,*) "NG"

  allocate(bb(-10:-1))
  bb=(/(i,i=1,10,1)/)
  a=x(bb)

  if (.not.allocated(a%x1)) write(6,*) "NG"
  if (any(a%x1/=(/(i,i=1,10)/))) write(6,*) "NG"
  if (any(lbound(a%x1)/=(/-10/))) write(6,*) "NG"
  if (any(ubound(a%x1)/=(/-1/))) write(6,*) "NG"
  if (any(bb/=(/(i,i=1,10)/))) write(6,*) "NG"
  if (any(lbound(bb)/=(/-10/))) write(6,*) "NG"
  if (any(ubound(bb)/=(/-1/))) write(6,*) "NG"

 print *,'pass'
end
