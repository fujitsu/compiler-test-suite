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

allocate(trg(5))
allocate(character(len=10)::trg(2)%pcmp%ch(5))

trg%pcmp%ii = 5
trg(2)%pcmp%ii = 20
trg(2)%pcmp%ch = "abcdef"

call sub(trg(:), trg(2)%pcmp%ch(2:4))
if(trg(2)%pcmp%ch(3) .ne. "012345") print*,"222"
if(trg(2)%pcmp%ch(4) .ne. "abcdef") print*,"223"
print*,"Pass"
contains
subroutine sub(dmy, arg)
class(ttt),pointer,intent(in) :: dmy(:)
character(len=:),pointer,intent(in) :: arg(:)

select type (dmy)
        class is (ttt)
            if(size(dmy) .ne. 5) print*,"121"
            if(len(dmy(2)%pcmp%ch(5)) /= 10) print*,"122"
            if(dmy(2)%pcmp%ch(3) /= "abcdef") print*,"123"
        class default
            print*,"124"
end select

if(arg(2) /= "abcdef") print*,"125"
if(LEN(arg) /= 10) print*,"126"
if(size(arg) /= 3) print*,"127"
arg(2) = "012345"
arg(3) = "abcdef"
end subroutine
end
