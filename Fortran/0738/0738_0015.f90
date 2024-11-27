type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)    ,allocatable,dimension(:)::a,b
  allocate(a(1),b(1))
  allocate(a(1)%p(5))
  allocate(b(1)%p(1))
  b(1)%p=1
  a=b
  deallocate(b(1)%p)
  deallocate(b)
  if (size(a(1)%p)/=1) write(6,*) "NG"
  if (any(a(1)%p/=1)) write(6,*) "NG"
  print *,'pass'
end
