type z
  integer(4),allocatable,dimension(:)::za
end type
type y
  type(z)   ,allocatable,dimension(:)::ya
end type
type (y)                             ::a 
integer(4)              ,dimension(2)::b1
integer(4)              ,dimension(2)::b2

  allocate(a%ya(2))
  b1=(/7,8/)
  b2=(/2,2/)

  a%ya(1)=z((b1+b2))

  if (.not.allocated(a%ya(1)%za)) write(6,*) "NG"
  if (     allocated(a%ya(2)%za)) write(6,*) "NG"

  a%ya(2)=z((b1-b2))

  if (.not.allocated(a%ya(2)%za)) write(6,*) "NG"
  if (any(a%ya(1)%za/=(/9,10/))) write(6,*) "NG"
  if (any(a%ya(2)%za/=(/5,6/))) write(6,*) "NG"

 print *,'pass'

end
