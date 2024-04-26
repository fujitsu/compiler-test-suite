module m
type t
integer :: i
byte, pointer::ppp(:)=>null()
end type t
type(t),save :: ttt
end module 
use m
print *,'pass'
end
