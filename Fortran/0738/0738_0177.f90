type z
  integer(4)            ,dimension(2)::zi
  integer(4),allocatable,dimension(:)::za
end type
type (z)                             ::a
integer(4)              ,dimension(2)::b

  b=2
  a=z((/1,2/),(b-1))

  if (any(a%zi/=(/1,2/))) write(6,*) "NG"
  if (any(a%za/=(/1,1/))) write(6,*) "NG"

 print *,'pass'

end
