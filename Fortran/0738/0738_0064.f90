type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)                            ::yi
end type
type (y)                             ::a
type (z)                             ::b

  allocate(a%yi%za(1))
  a%yi%za = 1

  b = a%yi

  a%yi%za = 2
  if (.not.allocated(b%za)) write(6,*) "NG"
  if (any(b%za/=1)) write(6,*) "NG"
  print *,'pass'
end
