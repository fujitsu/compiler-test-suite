module m1
type tty
character(len=:),allocatable :: CMSG
end type tty
type ty
integer,allocatable :: CSTAT,ESTAT
end type ty

interface 
subroutine sub1(x,y)
import tty,ty
type(tty) :: x
type(ty) :: y
end subroutine sub1
subroutine sub2(xx,yy)
import tty,ty 
type(tty) :: xx
type(ty) :: yy
end subroutine sub2
end interface
end module m1

use m1

type(tty):: obj_tty
type(ty) :: obj_ty

call sub1(obj_tty,obj_ty)
call sub2(obj_tty,obj_ty)


if(obj_ty%CSTAT<0)print*,"101",obj_ty%CSTAT
if(obj_ty%CSTAT>0)print*,"102",obj_ty%ESTAT
if(obj_ty%CSTAT==0)print*,"PASS"
end


subroutine sub1(x,y)
        use m1
type(tty) :: x
type(ty) :: y
allocate(character(len = 100) :: x%CMSG)
allocate(y%CSTAT,y%ESTAT)
end subroutine sub1

subroutine sub2(xx,yy)
        use m1
type(tty) :: xx
type(ty) :: yy
call execute_command_line("echo 'EXECUTE COMMAND LINE'",WAIT=.TRUE.,EXITSTAT=yy%ESTAT,CMDSTAT=yy%CSTAT,CMDMSG=xx%CMSG)
end subroutine sub2
