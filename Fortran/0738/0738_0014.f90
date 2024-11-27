type z
 integer,allocatable,dimension(:)::p
end type
type (z)            ,dimension(:)::a(3),b(3)
  allocate(a(1)%p(2))
  allocate(a(2)%p(3))
  allocate(a(3)%p(4))
  allocate(b(1)%p(3))
  allocate(b(2)%p(4))
  allocate(b(3)%p(5))
  a(1)%p=(/11,12/)
  a(2)%p=(/13,14,15/)
  a(3)%p=(/16,17,18,19/)
  b(1)%p=(/1,2,3/)
  b(2)%p=(/4,5,6,7/)
  b(3)%p=(/8,9,10,11,12/)

  a(2:3)=b(1:2)

  do i=1,3
    deallocate(b(i)%p)
  enddo

  if (size(a(1)%p)/=2) write(6,*) "NG"
  if (size(a(2)%p)/=3) write(6,*) "NG"
  if (size(a(3)%p)/=4) write(6,*) "NG"
  if (any(a(1)%p/=(/11,12/))) print *,a(1)%p
  if (any(a(2)%p/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(3)%p/=(/4,5,6,7/))) write(6,*) "NG"
  print *,'pass'
end
