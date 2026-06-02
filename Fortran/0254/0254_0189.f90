module m
integer, dimension(2,3) :: a
integer :: ad1(2)
type ty
logical(kind=2),allocatable :: b(:)
end type ty
type (ty),allocatable:: obj(:)
interface
  subroutine sub
  end subroutine sub
end interface
contains
function fun()
  logical :: fun
  fun=obj(2)%b(2)
end function
end module m
program pro
  use m
  call sub
  if(ad1(1).ne.2)print*,101
  if(ad1(2).ne.3)print*,102
  print*,"pass"
end program
subroutine sub
  use m
  a=RESHAPE((/29,12,29,27,13,27/),(/2,3/))
  allocate(obj(2))
  allocate(obj(1)%b(2))
  allocate(obj(2)%b(2))
  obj(2)%b=.true.
  ad1= minloc(a,2,a>20,kind=4,back=fun())
end subroutine sub
