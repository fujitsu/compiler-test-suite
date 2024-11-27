type y
integer,allocatable,dimension(:)::bb
end type
type(y)::yy
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a,b(5)

j=1
allocate(yy%bb(j))
do i=1,5
  yy%bb=1
  a=x(yy%bb)
  if (any(a%x1/=1))write(6,*) "NG"
end do
j=1
do i=1,5
  yy%bb=2
  b(i)=x(yy%bb)
  if (any(b(i)%x1/=2))write(6,*) "NG"
end do
print *,'pass'
end

