module m1
type ty
character(len=:),allocatable :: CMD
integer(kind=8) :: ESTAT,CSTAT
end type ty

type tty
type(ty) :: obj_ty
character(len=:),allocatable :: CMSG
end type tty


type(tty) :: obj_tty
end module m1


use m1, only : obj_tty

call sub(obj_tty)

if(obj_tty%obj_ty%CSTAT>0)print *,"101"
if(obj_tty%obj_ty%CSTAT<0)print *,"102"
if(obj_tty%obj_ty%ESTAT==0)print *,"PASS"


contains
subroutine sub(dmy)
use m1
type(tty) :: dmy
allocate(character(len=20)::dmy%CMSG)
allocate(character(len=100)::dmy%obj_ty%CMD)
dmy%obj_ty%CMD = "echo 'EXECUTE COMMAND LINE'"

call execute_command_line(obj_tty%obj_ty%CMD,WAIT = .true.,CMDMSG=obj_tty%CMSG,CMDSTAT=obj_tty%obj_ty%CSTAT,EXITSTAT=obj_tty%obj_ty%ESTAT)
end subroutine sub
    
end





