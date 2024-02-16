implicit none
type ty
character(LEN=:),allocatable:: ch(:,:)
end type
type(ty),allocatable :: o
integer :: x(2)
allocate(o)
allocate(character(LEN=3)::o%ch(2,3))
o%ch=RESHAPE(['AAA','BBB','AAA','BBB','AAA','BBB'],[2,3])
call sub(o%ch)
contains
subroutine sub(dmy)
character (LEN=*) :: dmy (1:,:)
x=findloc(dmy,dmy(2,1),BACK=.true.)
if(x(1).ne.2) print*,101
if(x(2).ne.3) print*,102
print*,"pass"
end subroutine sub
end

