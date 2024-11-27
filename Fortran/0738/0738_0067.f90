type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)               ,dimension(2)::yi
end type
type (y)                ,dimension(1)::a
type (z)                ,dimension(2)::b

  allocate(b(1)%za(2))
  b(1)%za = (/1,2/)

  a(1)%yi = b(1)

  b(1)%za = (/2,3/)
  if (.not.allocated(a(1)%yi(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%yi(2)%za)) write(6,*) "NG"
  if (any(a(1)%yi(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%yi(2)%za/=(/1,2/))) write(6,*) "NG"
  print *,'pass'
end
