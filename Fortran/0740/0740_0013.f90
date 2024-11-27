type z
  integer,allocatable,dimension(:)::za
end type
type(z),allocatable,dimension(:)::a
integer,dimension(3)::i1
integer,dimension(3)::i2

  i1=(/1,2,3/)
  i2=(/3,1,2/)
  allocate(a(3))
  a(1)=z((/1,2/))
  a(2)=z((/3,4/))
  a(3)=z((/5,6/))
  a(i1)=a(i2)
  do j=1,3
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/5,6/))) write(6,*) "NG"
  if (any(a(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(3)%za/=(/3,4/))) write(6,*) "NG"

  a(i2)=a(1:3:1)
  do j=1,3
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/5,6/))) write(6,*) "NG"

  i1=(/3,2,1/)
  a(i1)=a(:)
  do j=1,3
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/5,6/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/1,2/))) write(6,*) "NG"

  i2=(/2,2,2/)
  a(i1)=a(i2)
  do j=1,3
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/3,4/))) write(6,*) "NG"

 print *,'pass'
end
