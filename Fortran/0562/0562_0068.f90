type t
integer :: ii
end type

type tt
type(t) :: pcmp
end type

type ttt
type(tt) :: cmp
end type

type(ttt),pointer ::  trg(:)
integer,pointer :: ptr(:)

allocate(trg(5))
trg%cmp%pcmp%ii = 5
trg(2)%cmp%pcmp%ii = 20
ptr=>trg%cmp%pcmp%ii

call sub(trg(2)%cmp%pcmp%ii)
if(ptr(2) .ne. 10) print*,"221"
print*,"Pass"
contains
subroutine sub(dmy)
integer,pointer,intent(in) :: dmy
if(dmy .ne. 20) print*,"121"
dmy = 10
end subroutine
end
