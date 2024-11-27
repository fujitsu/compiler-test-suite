type z
  integer(4)            ,dimension(5)::i1
  integer(8),allocatable,dimension(:)::p1
  integer(4)            ,dimension(5)::i2
  integer(8),allocatable,dimension(:)::p2
end type
type (z)                             ::a(1),b(1)
  allocate(a(1)%p1(5))
  allocate(a(1)%p2(5))
  allocate(b(1)%p1(2))
  allocate(b(1)%p2(2))
  b(1)%p1=1
  b(1)%p2=2
  b(1)%i1=(/1,2,3,4,5/)
  b(1)%i2=(/5,4,3,2,1/)

  a(1)=b(1)

  b(1)%p1=11
  b(1)%p2=12
  if (.not.allocated(a(1)%p1)) write(6,*) "NG"
  if (.not.allocated(a(1)%p2)) write(6,*) "NG"
  if (any(a(1)%p1/=(/1,1/))) write(6,*) "NG"
  if (any(a(1)%p2/=(/2,2/))) write(6,*) "NG"
  if (any(a(1)%i1/=(/1,2,3,4,5/))) write(6,*) "NG"
  if (any(a(1)%i2/=(/5,4,3,2,1/))) write(6,*) "NG"
  if (any(b(1)%p1/=(/11,11/))) write(6,*) "NG"
  if (any(b(1)%p2/=(/12,12/))) write(6,*) "NG"
  print *,'pass'
end
