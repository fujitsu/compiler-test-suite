type z
  integer(2),allocatable,dimension(:)::zi
  character(3),allocatable,dimension(:)::zc
end type
type y
  type(z),allocatable,dimension(:)::ya
  integer(8),allocatable,dimension(:)::yb
end type
type(y)            ,dimension(1,1,2)::a
integer(1),allocatable,dimension(:)::sv1,sv2
character(3),target,allocatable,dimension(:)::ch1,ch2,ch3

  allocate(ch1(2),ch2(2),ch3(3))
  allocate(sv1(2),sv2(2))
  allocate(a(1,1,1)%ya(3),a(1,1,2)%ya(3))
  allocate(a(1,1,1)%yb(1),a(1,1,2)%yb(1))
  sv1=(/1,2/)
  sv2=(/2,1/)
  a(1,1,1)%ya(1)=z((/1,2,3/),(/'ABC','abc'/))
  a(1,1,1)%ya(2)=z((/4,5,6/),     null())
  a(1,1,1)%ya(3)=z((/7,8,9/),(/'GHI','ghi'/))
  a(1,1,1)%yb=(/11/)
  a(1,1,2)%ya(1)=z( null()  ,     null())
  a(1,1,2)%ya(2)=z( null()  ,(/'DEF','def'/))
  a(1,1,2)%ya(3)=z( null()  ,     null())
  a(1,1,2)%yb=(/12/)

  a(1:1:1,1:1:1,sv1)=a(1:1:1,1:1:1,sv2)

  if (.not.allocated(a(1,1,2)%ya(1)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(2)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(3)%zi)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(1)%zc)) write(6,*) "NG"
  if (     allocated(a(1,1,2)%ya(2)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%ya(3)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1,1,2)%yb      )) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(1)%zi)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(2)%zi)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(3)%zi)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(1)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1,1,1)%ya(2)%zc)) write(6,*) "NG"
  if (     allocated(a(1,1,1)%ya(3)%zc)) write(6,*) "NG"
  if (.not.allocated(a(1,1,1)%yb      )) write(6,*) "NG"
  if (any(a(1,1,2)%ya(1)%zi/=(/1,2,3/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(2)%zi/=(/4,5,6/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(3)%zi/=(/7,8,9/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(1)%zc/=(/'ABC','abc'/))) write(6,*) "NG"
  if (any(a(1,1,2)%ya(3)%zc/=(/'GHI','ghi'/))) write(6,*) "NG"

  if (any(a(1,1,1)%ya(2)%zc/=(/'DEF','def'/))) write(6,*) "NG"

  if (any(a(1,1,2)%yb/=(/11/))) write(6,*) "NG"
  if (any(a(1,1,1)%yb/=(/12/))) write(6,*) "NG"

 print *,'pass'
end
