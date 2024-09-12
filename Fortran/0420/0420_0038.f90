type t
integer :: ii
end type

type tt
type(t) :: pcmp
end type

type ttt
type(tt) :: cmp
end type

type(ttt),pointer ::  trg
integer,pointer :: ptr

allocate(trg)
trg%cmp%pcmp%ii=1 
ptr=>trg%cmp%pcmp%ii

call sub(ptr)
print *,'pass'
contains
subroutine sub(dmy)
integer,pointer,intent(in) :: dmy
if (dmy/=1) print *,301
end subroutine
end
