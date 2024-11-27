type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)               ,dimension(1)::yi
end type
type (y)                ,dimension(1)::a
type (z)                ,dimension(1)::b

  allocate(a(1)%yi(1)%za(1))
  a(1)%yi(1)%za = 1

  b(1) = a(1)%yi(1)

  a(1)%yi(1)%za = 2
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (any(b(1)%za/=1)) write(6,*) "NG"
  print *,'pass'
end
