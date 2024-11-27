type z
  integer,allocatable,dimension(:)::za
end type
type y
  type(z),allocatable,dimension(:)::ya
end type
type(y),allocatable,dimension(:)::a

  allocate(a(1))
  allocate(a(1)%ya(2))
  a(1)=y((/z((/1,2/)),z((/3,4/))/))
  a(1)%ya=a(1)%ya
  if (.not.allocated(a(1)%ya(1)%za)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(2)%za)) write(6,*) "NG"
  if (any(a(1)%ya(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(a(1)%ya(2)%za/=(/3,4/))) write(6,*) "NG"

 print *,'pass'
end
