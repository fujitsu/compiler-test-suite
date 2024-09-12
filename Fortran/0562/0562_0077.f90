type t
integer :: ii
end type

type tt
class(t),pointer :: pcmp(:,:)
end type

type ttt
type(tt) :: cmp
end type

type(ttt) ::  trg
integer,pointer :: ptr

allocate(trg%cmp%pcmp(5,10))
trg%cmp%pcmp(2,3)%ii = 20
ptr=>trg%cmp%pcmp(2,3)%ii

call sub(trg%cmp%pcmp)
if(ptr .ne. 10) print*,"221"
print*,"Pass"
contains
subroutine sub(dmy)
class(t),pointer,intent(in) :: dmy(:,:)

select type(dmy)
        class is (t)
           if(dmy(2,3)%ii .ne. 20) print*,"121"
           if(size(dmy) .ne. 50) print*,"122"
           dmy(2,3)%ii = 10
        class default
           print*,"131"
end select
end subroutine
end
