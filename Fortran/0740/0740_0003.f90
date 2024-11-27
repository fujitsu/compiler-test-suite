type z
  integer,allocatable,dimension(:)::za
end type
type y
  type(z),allocatable,dimension(:)::ya
end type
type x
  type(y),allocatable,dimension(:)::xa
end type
 type(x),allocatable,dimension(:)::a

  allocate(a(1))
  allocate(a(1)%xa(1))
  allocate(a(1)%xa(1)%ya(2))
  a(1)%xa(1)%ya(1)=z((/1,2/))
  a(1)%xa(1)%ya(2)=z((/3,4/))

  a(1)%xa(1)%ya(1)=a(1)%xa(1)%ya(1)
  if (.not.allocated(a(1)%xa(1)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa(1)%ya(2)%za)) write(6,*) "NG"
  if (any(a(1)%xa(1)%ya(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%xa(1)%ya(2)%za/=(/3,4/))) write(6,*) "NG"
  a(1)%xa(1)%ya(2)=a(1)%xa(1)%ya(2)
  if (.not.allocated(a(1)%xa(1)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa(1)%ya(2)%za)) write(6,*) "NG"
  if (any(a(1)%xa(1)%ya(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%xa(1)%ya(2)%za/=(/3,4/))) write(6,*) "NG"
  a(1)%xa(1)%ya(1)=a(1)%xa(1)%ya(2)
  if (.not.allocated(a(1)%xa(1)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa(1)%ya(2)%za)) write(6,*) "NG"
  if (any(a(1)%xa(1)%ya(1)%za/=(/3,4/))) write(6,*) "NG"
  if (any(a(1)%xa(1)%ya(2)%za/=(/3,4/))) write(6,*) "NG"

 print *,'pass'
end
