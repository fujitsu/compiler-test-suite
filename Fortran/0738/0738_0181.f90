type z
  integer(4),allocatable,dimension(:)::zi4
  character(3),allocatable,dimension(:)::zch3
  complex(8),allocatable,dimension(:)::zc8
end type
type(z)                 ,dimension(1)::a,b

  a(1) = z((/1,2,3/),(/'AaA','BbB'/),(/(3.0D0,4.0D0),(6.0D0,7.0D0)/))

  if (.not.allocated(a(1)%zi4)) write(6,*) "NG"
  if (.not.allocated(a(1)%zch3)) write(6,*) "NG"
  if (.not.allocated(a(1)%zc8)) write(6,*) "NG"
  if (any(a(1)%zi4/=(/1,2,3/))) write(6,*) "NG"
  if (a(1)%zch3(1)/='AaA') write(6,*) "NG"
  if (a(1)%zch3(2)/='BbB') write(6,*) "NG"
  if (abs(a(1)%zc8(1)-(3.0D0,4.0D0))>=1.0D-16) write(6,*) "NG"

  deallocate(a(1)%zi4) 
  deallocate(a(1)%zch3) 
  deallocate(a(1)%zc8) 

 print *,'pass'
end
