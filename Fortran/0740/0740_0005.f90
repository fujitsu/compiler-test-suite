type z
  integer,allocatable,dimension(:)::za
end type
 type(z)::a(3)

  a(1)=z((/1,2/))
  a(2)=z((/3,4/))
  a(3)=z((/5,6/))

  a(1)=a(1)
  a(2)=a(2)
  a(3)=a(3)
  if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/5,6/))) write(6,*) "NG"

  do j=1,3
    a(j)=a(j)
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/5,6/))) write(6,*) "NG"

  a(3:1:-1)=a(3:1:-1)
  do j=1,3
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/5,6/))) write(6,*) "NG"

 print *,'pass'
end
