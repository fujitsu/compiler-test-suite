module m1
type tty
character(len=:),allocatable :: CMSG
end type tty
end module m1

module m2
use m1
type,extends(tty) :: ty
integer,allocatable :: CSTAT,ESTAT
end type ty
end module m2

use m2
type(ty) :: obj_ty

allocate(character(len = 100) :: obj_ty%CMSG)
allocate(obj_ty%CSTAT,obj_ty%ESTAT)

call sub(obj_ty)
call execute_command_line("echo 'EXECUTE COMMAND LINE'",WAIT=.TRUE.,EXITSTAT=obj_ty%ESTAT,CMDSTAT=obj_ty%CSTAT,CMDMSG=obj_ty%CMSG)
if(obj_ty%CSTAT<0)print*,"101",obj_ty%CSTAT
if(obj_ty%CSTAT>0)print*,"102",obj_ty%ESTAT
if(obj_ty%CSTAT==0)print*,"PASS"
contains
subroutine sub(dmy)
    type(ty)::dmy
    dmy%ESTAT=2
    dmy%CSTAT=3
end subroutine sub
end
