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
call sub(trg, trg(2)%pcmp%ch(2:4))
contains
subroutine sub(dmy, arg)
class(ttt),pointer,intent(in) :: dmy(:)
character(len=:),pointer,intent(in) :: arg(:)
arg(2) = "012345"
arg(3) = "abcdef"
end subroutine
end
