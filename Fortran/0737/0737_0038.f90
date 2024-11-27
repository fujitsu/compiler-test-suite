integer,allocatable,dimension(:)::bb
type x
  integer,allocatable,dimension(:)::x1
end type
type(x)::a

  allocate(bb(1))
  bb=(/(i,i=1,1,1)/)
  a=x(bb)

  if(any(a%x1/=1))write(6,*) "NG"
print *,'pass'

end

