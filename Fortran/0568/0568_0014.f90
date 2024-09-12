module m1
type tty
character(len=:),allocatable :: CMSG,CMDID
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

call sub(obj_tty%CMSG,obj_tty%CMDID)
if(obj_ty%CSTAT<0)print*,"101",obj_ty%CSTAT
if(obj_ty%CSTAT>0)print*,"102",obj_ty%ESTAT
if(obj_ty%CSTAT==0)print*,"PASS"

contains 
subroutine sub(dmy1,dmy2)
    character(len = *) :: dmy1
    character(len = :),allocatable :: dmy2
    allocate(character(len=100)::dmy2)
    dmy2 = "echo 'EXECUTE_COMMAND_LINE'"
    call execute_command_line(dmy2,WAIT=.TRUE.,EXITSTAT=obj_ty%ESTAT,CMDSTAT=obj_ty%CSTAT,CMDMSG=dmy1)
end subroutine sub
    
end
