type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)                ,dimension(3)::a,b

  do i=1,3
    allocate(a(i)%p(3))
    allocate(b(i)%p(3))
  enddo
  b(1)%p=(/1,2,3/)
  b(2)%p=(/4,5,6/)
  b(3)%p=(/7,8,9/)
  do i=1,3
    a(i)=b(3-i+1)
    deallocate(b(3-i+1)%p)
  enddo
  if (.not.allocated(a(1)%p)) write(6,*) "NG"
  if (.not.allocated(a(2)%p)) write(6,*) "NG"
  if (.not.allocated(a(3)%p)) write(6,*) "NG"
  if (any(a(1)%p/=(/7,8,9/))) write(6,*) "NG"
  if (any(a(2)%p/=(/4,5,6/))) write(6,*) "NG"
  if (any(a(3)%p/=(/1,2,3/))) write(6,*) "NG"
  print *,'pass'
end
