type z
  integer(4),allocatable,dimension(:)::za
end type
type (z)                ,dimension(2)::a
type (z)                ,dimension(2)::b

  i=2
  allocate(b(1)%za(2))
  allocate(b(2)%za(2))
  b(1)%za = (/1,2/)
  b(2)%za = (/2,3/)

  a(1:2:1) = b(i)

  b(1)%za = (/3,4/)
  b(2)%za = (/4,5/)

  if (.not.allocated(a(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(2)%za)) write(6,*) "NG"
  if (any(a(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(a(2)%za/=(/2,3/))) write(6,*) "NG"

 print *,'pass'
end
