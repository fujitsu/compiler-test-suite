type z
  integer,allocatable::za1(:)
  integer,allocatable::za2(:)
end type
type y
  type(z)::yz(2)
end type
type (y)::a
type (z)::b

  b=z((/1/),(/2/))
  if (.not.allocated(b%za1)) write(6,*) "NG"
  if (.not.allocated(b%za2)) write(6,*) "NG"
  if (any(b%za1/=1)) write(6,*) "NG"
  if (any(b%za2/=2)) write(6,*) "NG"

  a=y((/ ( z((/1/),(/2/)) , i=1,2) /))
  if (.not.allocated(a%yz(1)%za1)) write(6,*) "NG"
  if (.not.allocated(a%yz(2)%za1)) write(6,*) "NG"
  if (.not.allocated(a%yz(1)%za2)) write(6,*) "NG"
  if (.not.allocated(a%yz(2)%za2)) write(6,*) "NG"
  if (any(a%yz(1)%za1/=1)) write(6,*) "NG"
  if (any(a%yz(2)%za1/=1)) write(6,*) "NG"
  if (any(a%yz(1)%za2/=2)) write(6,*) "NG"
  if (any(a%yz(2)%za2/=2)) write(6,*) "NG"

 print *,'pass'

end
