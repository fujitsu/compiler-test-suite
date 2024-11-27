type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)                ,dimension(2)::a,b

  do i=1,2
    allocate(a(i)%p(3))
    allocate(b(i)%p(3))
  enddo
  b(1)%p=(/1,2,3/)
  b(2)%p=(/3,2,1/)
  do i=1,2
    a(i)=b(3-i)
  enddo
  deallocate(b(1)%p)
  deallocate(b(2)%p)
  if (.not.allocated(a(1)%p)) write(6,*) "NG"
  if (.not.allocated(a(2)%p)) write(6,*) "NG"
  if (any(a(2)%p/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(1)%p/=(/3,2,1/))) write(6,*) "NG"
  print *,'pass'
end
