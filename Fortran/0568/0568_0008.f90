type ty
character(len=:),allocatable :: CMD
end type ty

type tty
type(ty) :: obj_ty
character(len=:),allocatable :: CMSG
end type tty

integer(kind=8) :: ESTAT,CSTAT

type(tty) :: obj_tty

ESTAT = 0

call sub(obj_tty)
call execute_command_line(obj_tty%obj_ty%CMD,WAIT = .true.,CMDMSG=obj_tty%CMSG,CMDSTAT=CSTAT,EXITSTAT=ESTAT)

if(CSTAT>0)print *,"101"
if(CSTAT<0)print *,"102",CSTAT
if(ESTAT==0)print *,"PASS"


contains
subroutine sub(dmy)
type(tty) :: dmy
allocate(character(len = 50)::dmy%CMSG)
allocate(character(len=100)::dmy%obj_ty%CMD)
dmy%obj_ty%CMD = "echo 'EXECUTE COMMAND LINE'"
end subroutine sub
    
end





