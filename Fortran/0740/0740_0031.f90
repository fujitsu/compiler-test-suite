type z
  integer(2),allocatable,dimension(:)::zi
  character(3),pointer,dimension(:)::zc
  real(4),allocatable,dimension(:)::zr
end type
type y
  type(z),dimension(3)::ya
end type
type(y),allocatable,dimension(:,:,:)::a
integer(1),allocatable,dimension(:)::sv1,sv2
character(3),target,allocatable,dimension(:)::ch

  allocate(ch(2))
  allocate(sv1(2),sv2(2))
  sv1=(/1,2/)
  sv2=(/2,1/)
  allocate(a(1,1,2))
  ch=(/'ABC','abc'/)
  a(1,1,1)%ya(1)=z((/1,2,3/),     ch        ,(/1.0,2.0/))
  a(1,1,1)%ya(2)=z((/4,5,6/),     null()    ,(/3.0,4.0/))
  ch=(/'GHI','ghi'/)
  a(1,1,1)%ya(3)=z((/7,8,9/),     ch        ,(/5.0,6.0/))
  a(1,1,2)%ya(1)=z( null()  ,     null()    ,  null()   )
  ch=(/'DEF','def'/)
  a(1,1,2)%ya(2)=z( null()  ,     ch        ,  null()   )
  a(1,1,2)%ya(3)=z( null()  ,     null()    ,  null()   )

  a(1:1:1,1:1:1,sv1)=a(1:1:1,1:1:1,sv2)

  if (.not.allocated(a(1,1,2)%ya(1)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(2)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(3)%zi)) write(6,*) "NG"
  if (.not.associated(a(1,1,2)%ya(1)%zc)) write(6,*) "NG"
  if (     associated(a(1,1,2)%ya(2)%zc)) write(6,*) "NG"
  if (.not.associated(a(1,1,2)%ya(3)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(1)%zr)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(2)%zr)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(3)%zr)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(1)%zi)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(2)%zi)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(3)%zi)) write(6,*) "NG"
  if (     associated(a(1,1,1)%ya(1)%zc)) write(6,*) "NG"
  if (.not.associated(a(1,1,1)%ya(2)%zc)) write(6,*) "NG"
  if (     associated(a(1,1,1)%ya(3)%zc)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(1)%zr)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(2)%zr)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(3)%zr)) write(6,*) "NG"
  if (any(a(1,1,2)%ya(1)%zi/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(2)%zi/=(/4,5,6/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(3)%zi/=(/7,8,9/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(1)%zc/=(/'DEF','def'/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(3)%zc/=(/'DEF','def'/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(1)%zr/=(/1.0,2.0/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(2)%zr/=(/3.0,4.0/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(3)%zr/=(/5.0,6.0/))) write(6,*) "NG"

  if (any(a(1,1,1)%ya(2)%zc/=(/'DEF','def'/))) write(6,*) "NG"

 print *,'pass'
end
