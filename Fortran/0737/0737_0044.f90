type y
integer,allocatable,dimension(:)::bb
end type
type(y),allocatable::yy(:)
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a

allocate(yy(3))
do j=1,3
allocate(yy(j)%bb(5))
do i=1,5
  yy(j)%bb(:i)=(/(k,k=1,i)/)
  a=x(yy(j)%bb(:i))
  if (any(a%x1/=(/(k,k=1,i)/)))write(6,*) "NG"
end do
end do
print *,'pass'
end

