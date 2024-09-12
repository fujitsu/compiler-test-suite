type t
integer :: ii
end type

type tt
type(t),pointer :: pcmp
end type

type ttt
type(tt) :: cmp
end type

type(ttt) ::  trg
integer,pointer :: ptr

allocate(trg%cmp%pcmp)
trg%cmp%pcmp%ii = 20
ptr=>trg%cmp%pcmp%ii

call sub(trg%cmp%pcmp%ii)
if(ptr.ne. 10) print*,"221"
print*,"Pass"
contains
subroutine sub(dmy)
integer,pointer,intent(in) :: dmy
if(dmy .ne. 20) print*,"121"
dmy = 10
end subroutine
end
