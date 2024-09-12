implicit none
call sub()
contains
subroutine sub()
type ty
character(LEN=3):: ch(2,3)
end type
type(ty),parameter :: o = ty(RESHAPE(['AAA','BBB','AAA','BBB','AAA','BBB'],[2,3]))
integer :: x(2)=findloc(o%ch,o%ch(2,1),BACK=.true.)
if(x(1).ne.2) print*,101
if(x(2).ne.3) print*,102
print*,"pass"
end subroutine sub
end

