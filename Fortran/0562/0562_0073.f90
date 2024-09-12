type t
character(len=:),pointer::msg(:)
end type

type tt
type(t),pointer :: pcmp(:,:)
end type

type ttt
type(tt) :: cmp
end type

type(ttt) ::  trg

allocate(trg%cmp%pcmp(5,10))
allocate(character(len=10)::trg%cmp%pcmp(2,3)%msg(10))
trg%cmp%pcmp(2,3)%msg(:) = "ABCDE"

call sub(trg%cmp%pcmp(2,3)%msg(2:5)(2:4))
if(trg%cmp%pcmp(2,3)%msg(2) .ne. "A234E") print*,"221"
if(trg%cmp%pcmp(2,3)%msg(3) .ne. "A234E") print*,"222"
if(trg%cmp%pcmp(2,3)%msg(4) .ne. "A234E") print*,"223"
if(trg%cmp%pcmp(2,3)%msg(1) .ne. "ABCDE") print*,"224"
print*,"Pass"

contains
subroutine sub(arg)
character(len=:),pointer,intent(in) :: arg(:)

if(LEN(arg) /= 3) print*,"124",LEN(arg)
if(arg(1) /= "BCD") print*,"125"
if(arg(2) /= "BCD") print*,"125"
if(arg(3) /= "BCD") print*,"125"
if(SIZE(arg) /= 4) print*,"126",SIZE(arg)
arg = "234"
end subroutine
end
