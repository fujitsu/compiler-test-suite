type z
  integer(2),allocatable,dimension(:)::zi
  character(3),allocatable,dimension(:)::zc
  real(4),allocatable,dimension(:)::zr
end type
type y
  type(z),dimension(3)::ya
end type
type x
  type(y)::xa
end type
type(x),dimension(1)::a
integer(1),allocatable,dimension(:)::sv1,sv2

  allocate(sv1(3),sv2(3))
  sv1=(/2,3,1/)
  sv2=(/1,2,3/)
  a(1)%xa%ya(1)=z((/1,2,3/),(/'ABC','abc'/),(/1.0,2.0/))
  a(1)%xa%ya(2)=z((/4,5,6/),     null()    ,(/3.0,4.0/))
  a(1)%xa%ya(3)=z((/7,8,9/),(/'GHI','ghi'/),(/5.0,6.0/))

  a(1)%xa%ya(sv1)=a(1)%xa%ya(sv2)

  if (.not.allocated(a(1)%xa%ya(1)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(2)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(3)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(1)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(2)%zc)) write(6,*) "NG"
  if (     allocated(a(1)%xa%ya(3)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(1)%zr)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(2)%zr)) write(6,*) "NG"
  if (.not.allocated(a(1)%xa%ya(3)%zr)) write(6,*) "NG"
  if (any(a(1)%xa%ya(2)%zi/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(3)%zi/=(/4,5,6/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(1)%zi/=(/7,8,9/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(2)%zc/=(/'ABC','abc'/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(1)%zc/=(/'GHI','ghi'/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(2)%zr/=(/1.0,2.0/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(3)%zr/=(/3.0,4.0/))) write(6,*) "NG"
  if (any(a(1)%xa%ya(1)%zr/=(/5.0,6.0/))) write(6,*) "NG"

 print *,'pass'
end
