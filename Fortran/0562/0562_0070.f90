module mod1
type t
character(len=:),allocatable::ch(:)
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
allocate(character(len=10)::trg(2)%pcmp%ch(5))

trg%pcmp%ii = 5
trg(2)%pcmp%ii = 20
trg(3)%pcmp%ch = ["012345"]
trg(2)%pcmp%ch = "abcdef"
ptr=>trg%pcmp%ii

call sub(trg(2)%pcmp%ii, trg(2)%pcmp%ch(2:4))
if(ptr(2) .ne. 10) print*,"221"
if(trg(2)%pcmp%ch(3) .ne. "012345") print*,"222"
if(trg(2)%pcmp%ch(4) .ne. "abcdef") print*,"223"
print*,"Pass"
contains
subroutine sub(dmy, arg)
integer,pointer,intent(in) :: dmy
character(len=:),pointer,intent(in) :: arg(:)
if(dmy .ne. 20) print*,"121"
if(arg(2) /= "abcdef") print*,"122"
if(LEN(arg) /= 6) print*,"123"
if(size(arg) /= 3) print*,"124"
dmy = 10
arg(2) = "012345"
arg(3) = "abcdef"
end subroutine
end
