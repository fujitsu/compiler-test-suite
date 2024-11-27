type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)                            ::yi
end type
type (y)                             ::a
type (z)                             ::b

  allocate(b%za(1))
  b%za = 1

  a%yi = b

  b%za = 2
  if (.not.allocated(a%yi%za)) write(6,*) "NG"
  if (any(a%yi%za/=1)) write(6,*) "NG"
  print *,'pass'
end
