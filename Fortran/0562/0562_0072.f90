type t
character(len=:),pointer::msg
end type

type tt
type(t),pointer :: pcmp(:,:)
end type

type ttt
type(tt) :: cmp
end type

type(ttt) ::  trg

allocate(trg%cmp%pcmp(5,10))
allocate(character(len=10)::trg%cmp%pcmp(2,3)%msg)
trg%cmp%pcmp(2,3)%msg = "ABCDE"

call sub(trg%cmp%pcmp(2,3)%msg(2:4))
if(trg%cmp%pcmp(2,3)%msg .ne. "A234E") print*,"221"
print*,"Pass"

contains
subroutine sub(arg)
character(len=:),pointer,intent(in) :: arg

if(LEN(arg) /= 3) print*,"124",LEN(arg)
if(arg /= "BCD") print*,"125"
arg = "234"
end subroutine
end
