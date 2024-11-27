type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)               ,dimension(4)::yi
end type
type (y)                ,dimension(1)::a
type (z)                ,dimension(4)::b

  allocate(b(2)%za(2))
  allocate(b(4)%za(2))
  allocate(a(1)%yi(2)%za(3))
  allocate(a(1)%yi(4)%za(3))
  b(2)%za = (/2,3/)
  b(4)%za = (/4,5/)
  a(1)%yi(2)%za = (/-2,-3,-4/)
  a(1)%yi(4)%za = (/-4,-5,-6/)

  a(1)%yi(1:3:2) = b(2:4:2)

  deallocate(b(2)%za)
  deallocate(b(4)%za)

  if (.not.allocated(a(1)%yi(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yi(2)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yi(3)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yi(4)%za)) write(6,*) "NG"
  if (any(a(1)%yi(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(a(1)%yi(2)%za/=(/-2,-3,-4/))) write(6,*) "NG"
  if (any(a(1)%yi(3)%za/=(/4,5/))) write(6,*) "NG"
  if (any(a(1)%yi(4)%za/=(/-4,-5,-6/))) write(6,*) "NG"

  deallocate(a(1)%yi(1)%za)
  deallocate(a(1)%yi(2)%za)
  deallocate(a(1)%yi(3)%za)
  deallocate(a(1)%yi(4)%za)

  print *,'pass'
end
