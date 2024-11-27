integer,allocatable,dimension(:)::bb
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a

allocate(bb(1))
do i=1,5
  bb=1
  a=x(bb)
  if (any(a%x1/=1))write(6,*) "NG"
end do
print *,'pass'
end

