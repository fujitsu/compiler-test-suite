type y
integer,allocatable,dimension(:)::bb
end type
type(y)::yy
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a

allocate(yy%bb(1))
do i=1,5
  yy%bb=1
  a=x(yy%bb)
  if (any(a%x1/=1))write(6,*) "NG"
end do
print *,'pass'
end

