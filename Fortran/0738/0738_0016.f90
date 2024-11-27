type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)    ,allocatable,dimension(:,:)::a,b
  allocate(a(2,2),b(2,2))
  allocate(a(1,1)%p(5))
  allocate(a(2,1)%p(5))
  allocate(a(1,2)%p(3))
  allocate(a(2,2)%p(3))
  allocate(b(2,1)%p(1))
  b(2,1)%p=1
  a=b
  deallocate(b(2,1)%p)
  deallocate(b)
  if (.not.allocated(a(2,1)%p)) write(6,*) "NG"
  if (size(a(2,1)%p)/=1) write(6,*) "NG"
  if (any(a(2,1)%p/=1)) write(6,*) "NG"
  print *,'pass'
end
