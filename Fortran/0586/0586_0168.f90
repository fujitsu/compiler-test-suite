module m
interface
     subroutine sub(x)
       integer :: x
     end subroutine
end interface
end module 
use m
TYPE ty
  PROCEDURE (sub),NOPASS, POINTER:: ptr=>sub
END TYPE
type(ty)::obj(5)
if(associated(obj(1)%ptr).neqv..true.)print*,"101"
call obj(1)%ptr(1)
print*,"pass"
end
subroutine sub(x)
       integer :: x
end subroutine
