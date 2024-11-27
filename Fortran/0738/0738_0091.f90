type z
  integer(4),allocatable,dimension(:)::za
end type
type (z)                ,dimension(2)::a
type (z)                ,dimension(2)::b

  allocate(b(1)%za(1))
  b(1)%za = 1

  i=1
  a(1:2:1) = b(i)

  deallocate(b(1)%za)
  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(1)%za/=1)) print *,a(1)%za
  if (any(a(2)%za/=1)) print *,a(2)%za
  deallocate(a(1)%za)
  deallocate(a(2)%za)

 print *,'pass'
end
