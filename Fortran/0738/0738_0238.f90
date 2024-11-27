type z
  integer(4),dimension(2)::zi
end type
type y
  type(z),allocatable,dimension(:)::ya
end type
type (y),dimension(1)::a
type (y),allocatable,dimension(:)::b

  allocate(b(2))
  allocate(b(1)%ya(1))
  allocate(b(2)%ya(1))
  allocate(a(1)%ya(1))
  a(1)%ya(1)%zi=(/100,101/)
  b(1)=a(1)
  b(2)=b(1)
  a(1)%ya(1)%zi=(/200,201/)
  if (.not.allocated(b(1)%ya)) write(6,*) "NG"
  if (.not.allocated(b(2)%ya)) write(6,*) "NG"
  if (any(b(1)%ya(1)%zi/=(/100,101/))) write(6,*) "NG"
  if (any(b(2)%ya(1)%zi/=(/100,101/))) write(6,*) "NG"
  b(:)=a(1)
  if (any(b(1)%ya(1)%zi/=(/200,201/))) write(6,*) "NG"
  if (any(b(2)%ya(1)%zi/=(/200,201/))) write(6,*) "NG"
  if (.not.allocated(b(1)%ya)) write(6,*) "NG"
  if (.not.allocated(b(2)%ya)) write(6,*) "NG"

 print *,'pass'
end
