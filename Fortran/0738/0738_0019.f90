type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)    ,allocatable,dimension(:)::a,b

  allocate(a(3),b(3))
  do i=1,3
    allocate(a(i)%p(1))
    allocate(b(i)%p(3))
  enddo
  b(1)%p=(/1,2,3/)
  b(2)%p=(/4,5,6/)
  b(3)%p=(/7,8,9/)
  do i=1,3
    a(i)=b(3-i+1)
  enddo
  deallocate(b)
  if (size(a(1)%p)/=3) write(6,*) "NG"
  if (size(a(2)%p)/=3) write(6,*) "NG"
  if (size(a(3)%p)/=3) write(6,*) "NG"
  if (any(a(1)%p/=(/7,8,9/))) write(6,*) "NG"
  if (any(a(2)%p/=(/4,5,6/))) write(6,*) "NG"
  if (any(a(3)%p/=(/1,2,3/))) write(6,*) "NG"
  print *,'pass'
end
