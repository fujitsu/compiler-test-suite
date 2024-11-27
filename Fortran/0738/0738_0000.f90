type z
  integer(4),allocatable,dimension(:)::p
end type
type (z) a,b
  allocate(a%p(5))
  allocate(b%p(1))
  b%p=1
  a=b
  b%p=2
  if (.not.allocated(a%p)) write(6,*) "NG"
  if (size(a%p)/=1) write(6,*) "NG"
  if (any(a%p/=1)) write(6,*) "NG"
  if (any(b%p/=2)) write(6,*) "NG"
  print *,'pass'
end
