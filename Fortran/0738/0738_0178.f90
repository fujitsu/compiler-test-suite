type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)                            ::ya
end type
type (y)                             ::a
integer(4)              ,dimension(2)::b

  b=(/2,1/)

  a%ya=z((b+1))

  if (any(a%ya%za/=(/3,2/))) write(6,*) "NG"

 print *,'pass'
end
