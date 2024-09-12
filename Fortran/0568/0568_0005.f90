module m1
type tty
character(len=:),allocatable :: CMSG
end type tty
end module m1

use m1
type ty
integer,allocatable :: CSTAT,ESTAT
end type ty

type(tty):: obj_tty
type(ty) :: obj_ty

allocate(character(len = 100) :: obj_tty%CMSG)
allocate(obj_ty%CSTAT,obj_ty%ESTAT)

call execute_command_line("echo 'EXECUTE COMMAND LINE'",WAIT=.TRUE.,EXITSTAT=obj_ty%ESTAT,CMDSTAT=obj_ty%CSTAT,CMDMSG=obj_tty%CMSG)
if(obj_ty%CSTAT<0)print*,"101",obj_ty%CSTAT
if(obj_ty%CSTAT>0)print*,"102",obj_ty%ESTAT
if(obj_ty%CSTAT==0)print*,"PASS"
end
