type z
  integer(4),allocatable,dimension(:)::zp
end type
type y
  type (z)                           ::yi
end type
type (y)                             ::a,b
  allocate(a%yi%zp(5))
  allocate(b%yi%zp(2))
  b%yi%zp=1
  a=b
  b%yi%zp=2
  if (size(a%yi%zp)/=2) write(6,*) "NG"
  if (any(a%yi%zp/=(/1,1/))) write(6,*) "NG"
  if (any(b%yi%zp/=(/2,2/))) write(6,*) "NG"
  print *,'pass'
end
