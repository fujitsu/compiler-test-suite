subroutine s1

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
  if (.not.allocated(b%za1)) print *,'fail'
  if (.not.allocated(b%za2)) print *,'fail'
  if (any(b%za1/=1)) print *,'fail'
  if (any(b%za2/=2)) print *,'fail'

  a=y((/ ( z((/1/),(/2/)) , i=1,2) /))
  if (.not.allocated(a%yz(1)%za1)) print *,'fail'
  if (.not.allocated(a%yz(2)%za1)) print *,'fail'
  if (.not.allocated(a%yz(1)%za2)) print *,'fail'
  if (.not.allocated(a%yz(2)%za2)) print *,'fail'
  if (any(a%yz(1)%za1/=1)) print *,'fail'
  if (any(a%yz(2)%za1/=1)) print *,'fail'
  if (any(a%yz(1)%za2/=2)) print *,'fail'
  if (any(a%yz(2)%za2/=2)) print *,'fail'

end
do k=1,100
call s1
end do
 print *,'pass'

end
