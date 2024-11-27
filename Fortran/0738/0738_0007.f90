type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)                ,dimension(2)::a,b
  allocate(a(1)%p(5))
  allocate(a(2)%p(5))
  allocate(b(1)%p(3))
  allocate(b(2)%p(4))
  b(1)%p=(/1,2,3/)
  b(2)%p=(/4,3,2,1/)
  a=b
  b(1)%p=(/11,12,13/)
  b(2)%p=(/14,13,12,11/)
  if (.not.allocated(a(1)%p)) write(6,*) "NG"
  if (.not.allocated(a(2)%p)) write(6,*) "NG"
  if (any(a(1)%p/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(2)%p/=(/4,3,2,1/))) print *,a(2)%p
  if (any(b(1)%p/=(/11,12,13/))) write(6,*) "NG"
  if (any(b(2)%p/=(/14,13,12,11/))) write(6,*) "NG"
  print *,'pass'
end
