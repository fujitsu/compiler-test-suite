type z
  integer(8),allocatable,dimension(:)::p1
  integer(8),allocatable,dimension(:)::p2
end type
type (z)                             ::a(1),b(1)
  allocate(a(1)%p1(5))
  allocate(a(1)%p2(5))
  allocate(b(1)%p1(2))
  allocate(b(1)%p2(2))
  b(1)%p1=1
  b(1)%p2=2
  a(1)=b(1)
  b(1)%p1=11
  b(1)%p2=12
  if (size(a(1)%p1)/=2) write(6,*) "NG"
  if (size(a(1)%p2)/=2) write(6,*) "NG"
  if (any(a(1)%p1/=(/1,1/))) write(6,*) "NG"
  if (any(a(1)%p2/=(/2,2/))) write(6,*) "NG"
  if (any(b(1)%p1/=(/11,11/))) write(6,*) "NG"
  if (any(b(1)%p2/=(/12,12/))) write(6,*) "NG"
  print *,'pass'
end
