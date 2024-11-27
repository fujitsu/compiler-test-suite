integer,allocatable,dimension(:)::bb
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a,b
integer(2),dimension(10)::sv=(/1,3,5,7,9,2,4,6,8,10/)

  allocate(bb(10))
  bb=(/(i,i=1,10,1)/)
  a=x(bb)
  b=x(bb(sv))
  if (any(a%x1/=(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
  if (any(b%x1/=(/1,3,5,7,9,2,4,6,8,10/))) write(6,*) "NG"

 print *,'pass'

end
