program main
intrinsic sin
type ty
  procedure(real),pointer,nopass::ptr
end type
real,external :: myfunction
type(ty)::obj = ty(myfunction)
if(associated(obj%ptr).neqv..true.)print*,"101"
if(obj%ptr(1.0).ne.sin(1.0))print*,"105"
print*,"PASS"
end program

function myfunction(x) result(r)
  real, intent(in) :: x
  real             :: r
  r = sin(x)
end function

