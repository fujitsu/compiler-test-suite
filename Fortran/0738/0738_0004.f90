type z
  integer,allocatable,dimension(:)::p
end type
type (z)                          ::a(1),b(1)

  allocate(a(1)%p(10))
  if (size(a(1)%p)/=10) write(6,*) "NG"
  allocate(b(1)%p(5))
  b(1)%p=(/1,2,3,4,5/)

  a(1) = b(1)

  if (.not.allocated(a(1)%p)) write(6,*) "NG"
  if (size(a(1)%p)/=5) write(6,*) "NG"
  if (any(a(1)%p/=(/1,2,3,4,5/))) write(6,*) "NG"
  print *,'pass'

end
