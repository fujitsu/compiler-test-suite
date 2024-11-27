type z
  integer(4),allocatable,dimension(:)::p
end type
type (z)                ,dimension(1)::a,b

  do i=1,1
    allocate(a(i)%p(10))
    allocate(b(i)%p(3))
  enddo
  b(1)%p=(/1,2,3/)
  do i=1,1
    a(i)=b(i)
  enddo
  deallocate(b(1)%p)
  if (size(a(1)%p)/=3) write(6,*) "NG"
  if (any(a(1)%p/=(/1,2,3/))) write(6,*) "NG"
  print *,'pass'
end
