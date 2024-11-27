type z
 integer,allocatable,dimension(:)::p
end type
type (z)            ,dimension(:)::a(2),b(2)
  do i=1,2
    allocate(a(i)%p(1:i+1))
    allocate(b(i)%p(1:i+2))
  enddo
  a(2)%p=(/13,14,15/)
  b(1)%p=(/1,2,3/)
  b(2)%p=(/1,2,3,4/)
  a(1)%p=(/11,12/)

  a(1)=b(2)
  a(2)=b(1)

  do i=1,2
    deallocate(b(i)%p)
  enddo

  if (size(a(1)%p)/=4) write(6,*) "NG"
  if (size(a(2)%p)/=3) write(6,*) "NG"
  if (any(a(1)%p/=(/1,2,3,4/))) print *,a(1)%p
  if (any(a(2)%p/=(/1,2,3/))) write(6,*) "NG"
  print *,'pass'
end
