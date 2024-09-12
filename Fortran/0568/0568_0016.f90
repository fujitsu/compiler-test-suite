module m1
type tty
character(len=:),allocatable :: CMSG,CMDID
end type tty
end module m1

use m1
type ty
integer,allocatable :: CSTAT,ESTAT
logical,allocatable :: lo(:)
end type ty
integer :: dd = 100

type(tty):: obj_tty
type(ty) :: obj_ty

allocate(obj_ty%lo(2))
allocate(character(len = 100) :: obj_tty%CMDID)
allocate(obj_ty%CSTAT,obj_ty%ESTAT)

obj_ty%lo = .TRUE.
call sub(obj_tty%CMSG,obj_tty%CMDID,dd)
if(obj_ty%CSTAT<0)print*,"101",obj_ty%CSTAT
if(obj_ty%CSTAT>0)print*,"102",obj_ty%ESTAT
if(obj_ty%CSTAT==0)print*,"PASS"

contains 
subroutine sub(dmy1,dmy2,yy)
    integer::yy
    character(len = :),allocatable :: dmy1
    character(len = *) :: dmy2
    allocate(character(len=yy)::dmy1)
    dmy2 = "echo 'EXECUTE_COMMAND_LINE'"
    call execute_command_line(dmy2,WAIT=obj_ty%lo(1),EXITSTAT=obj_ty%ESTAT,CMDSTAT=obj_ty%CSTAT,CMDMSG=dmy1)
end subroutine sub
    
end
