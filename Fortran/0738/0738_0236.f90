integer,allocatable,dimension(:)::bb
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)   ,allocatable,dimension(:)::a,b
integer(8),allocatable,dimension(:)::sv

  allocate(a(1),b(1))
  allocate(bb(10))
  allocate(sv(10))
  bb=(/(i,i=1,10,1)/)
  sv=(/1,3,5,7,9,2,4,6,8,10/)
  a=x(bb)
  b=x(bb(sv))
  if (any(a(1)%x1/=(/1,2,3,4,5,6,7,8,9,10/))) write(6,*) "NG"
  if (any(b(1)%x1/=(/1,3,5,7,9,2,4,6,8,10/))) write(6,*) "NG"

 print *,'pass'
end
