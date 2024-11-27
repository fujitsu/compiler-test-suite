type z
  integer(2),allocatable,dimension(:)::zi
  character(3),allocatable,dimension(:)::zc
  real(4),allocatable,dimension(:)::zr
end type
type y
  type(z),dimension(3)::ya
end type
type(y),allocatable,dimension(:)::a
integer(1),allocatable,dimension(:)::sv1,sv2

  allocate(sv1(3),sv2(3))
  sv1=(/3,2,1/)
  sv2=(/2,1,3/)
  allocate(a(1))
  a(1)%ya(1)=z((/1,2,3/),(/'ABC','abc'/),(/1.0,2.0/))
  a(1)%ya(2)=z((/4,5,6/),     null()    ,(/3.0,4.0/))
  a(1)%ya(3)=z((/7,8,9/),(/'GHI','ghi'/),(/5.0,6.0/))

  a=a

  if (.not.allocated(a(1)%ya(1)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(2)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(3)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(1)%zc)) write(6,*) "NG"
  if (     allocated(a(1)%ya(2)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(3)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(1)%zr)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(2)%zr)) write(6,*) "NG"
  if (.not.allocated(a(1)%ya(3)%zr)) write(6,*) "NG"
  if (any(a(1)%ya(1)%zi/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(1)%ya(2)%zi/=(/4,5,6/))) write(6,*) "NG"
  if (any(a(1)%ya(3)%zi/=(/7,8,9/))) write(6,*) "NG"
  if (any(a(1)%ya(1)%zc/=(/'ABC','abc'/))) write(6,*) "NG"
  if (any(a(1)%ya(3)%zc/=(/'GHI','ghi'/))) write(6,*) "NG"
  if (any(a(1)%ya(1)%zr/=(/1.0,2.0/))) write(6,*) "NG"
  if (any(a(1)%ya(2)%zr/=(/3.0,4.0/))) write(6,*) "NG"
  if (any(a(1)%ya(3)%zr/=(/5.0,6.0/))) write(6,*) "NG"

 print *,'pass'
end
