module mod1
type t
character(len=10)::ch
integer :: ii
end type

type tt
type(t) :: pcmp
end type

type,extends(tt)::ttt
type(tt) :: cmp
end type
end module

program main
USE mod1
type(ttt),pointer ::  trg(:)
integer,pointer :: ptr(:)

allocate(trg(5))
trg%pcmp%ii = 5
trg(2)%pcmp%ii = 20
trg%pcmp%ch = "012345"
trg(2)%pcmp%ch = "abcdef"
ptr=>trg%pcmp%ii

call sub(trg(2)%pcmp%ii, trg(2)%pcmp%ch)
if(ptr(2) .ne. 10) print*,"221"
if(trg(2)%pcmp%ch .ne. "012345") print*,"222"
print*,"Pass"
contains
subroutine sub(dmy, arg)
integer,pointer,intent(in) :: dmy
character(len=:),pointer,intent(in) :: arg
if(dmy .ne. 20) print*,"121"
if(arg /= "abcdef") print*,"122"
if(LEN(arg) /= 10) print*,"123"
dmy = 10
arg = "012345"
end subroutine
end
