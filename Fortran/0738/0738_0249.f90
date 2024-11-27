type z
  character(5),allocatable::za1(:)
  integer(1),allocatable::za2(:)
end type
type y
  type(z)::yz(2)
end type
type (y)::a
type (z)::b

  b=z((/'ABCD'/),(/2/))
  if (.not.allocated(b%za1)) write(6,*) "NG"
  if (.not.allocated(b%za2)) write(6,*) "NG"
  if (any(b%za1/='ABCD ')) write(6,*) "NG"
  if (any(b%za2/=2)) write(6,*) "NG"

  a=y((/ ( z((/'abc'/),(/1,2,3/)) , i=1,2) /))
  if (.not.allocated(a%yz(1)%za1)) write(6,*) "NG"
  if (.not.allocated(a%yz(2)%za1)) write(6,*) "NG"
  if (.not.allocated(a%yz(1)%za2)) write(6,*) "NG"
  if (.not.allocated(a%yz(2)%za2)) write(6,*) "NG"
  if (any(a%yz(1)%za1/=(/'abc  '/))) write(6,*) "NG"
  if (any(a%yz(2)%za1/=(/'abc  '/))) write(6,*) "NG"
  if (any(a%yz(1)%za2/=(/1,2,3/))) write(6,*) "NG"
  if (any(a%yz(2)%za2/=(/1,2,3/))) write(6,*) "NG"

 print *,'pass'

end
