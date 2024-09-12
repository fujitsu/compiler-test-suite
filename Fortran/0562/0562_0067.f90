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
trg(3)%cmp%pcmp%ii = 30
trg(4)%cmp%pcmp%ii = 40
ptr=>trg%cmp%pcmp%ii

call sub(trg(3:4)%cmp%pcmp%ii)
if(ptr(1) .ne. 5) print*,"221"
if(ptr(2) .ne. 20) print*,"222"
if(ptr(3) .ne. 100) print*,"223"
if(ptr(4) .ne. 200) print*,"224"
print*,"Pass"
contains
subroutine sub(dmy)
integer,pointer,intent(in) :: dmy(:)
if(dmy(1) .ne. 30) print*,"121"
if(dmy(2) .ne. 40) print*,"122"
dmy(1) = 100
dmy(2) = 200
end subroutine
end
