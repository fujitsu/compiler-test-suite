type z
  integer,allocatable,dimension(:)::za
end type
type(z),allocatable,dimension(:)::a
integer(1),allocatable,dimension(:)::i1
integer(1),allocatable,dimension(:)::i2

  allocate(i1(5),i2(5))
  i1=(/1,2,3,4,5/)
  i2=(/5,4,3,2,1/)
  allocate(a(5))
  a(1)=z((/1,2/))
  a(2)=z((/3,4/))
  a(3)=z((/5,6/))
  a(4)=z((/7,8/))
  a(5)=z((/9,0/))
  a(i1)=a(i2)
  do j=1,5
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/9,0/))) write(6,*) "NG"
  if (any(a(2)%za/=(/7,8/))) write(6,*) "NG"
  if (any(a(3)%za/=(/5,6/))) write(6,*) "NG"
  if (any(a(4)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(5)%za/=(/1,2/))) write(6,*) "NG"

  i1=(/1,2,1,4,5/)
  i2=(/5,4,3,2,1/)
  a(i2)=a(i1)
  do j=1,5
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(2)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(3)%za/=(/9,0/))) write(6,*) "NG"
  if (any(a(4)%za/=(/7,8/))) write(6,*) "NG"
  if (any(a(5)%za/=(/9,0/))) write(6,*) "NG"

  i1=(/3,3,1,5,5/)
  i2=(/5,4,3,2,1/)
  a(i2)=a(i1)
  do j=1,5
    if (.not.allocated(a(j)%za)) write(6,*) "NG"
  enddo
  if (any(a(1)%za/=(/9,0/))) write(6,*) "NG"
  if (any(a(2)%za/=(/9,0/))) write(6,*) "NG"
  if (any(a(3)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(4)%za/=(/9,0/))) write(6,*) "NG"
  if (any(a(5)%za/=(/9,0/))) write(6,*) "NG"

 print *,'pass'
end
