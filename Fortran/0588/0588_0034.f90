module m
TYPE ty
  character(5) :: ch
  PROCEDURE (LEN), POINTER,nopass :: Charlen
END TYPE 
contains
subroutine sub()
type(ty) :: obj
data obj /ty('a',LEN)/
if(obj%Charlen(obj%ch) .ne. 5)print*,"101"
print*,"pass"
end subroutine

end module
use m
call sub()
end
