module m1
type t
character(len=:),pointer::msg
integer::ii
end type

type tt
class(t),pointer :: pcmp(:,:)
end type

type ttt
type(tt) :: cmp
end type

type(ttt),protected ::  trg

contains
subroutine fun()
allocate(trg%cmp%pcmp(5,10))
allocate(character(len=10)::trg%cmp%pcmp(2,3)%msg)
trg%cmp%pcmp(2,3)%msg = "ABCDE"
trg%cmp%pcmp(:,:)%ii = 20

call sub(trg%cmp%pcmp(:,:),trg%cmp%pcmp(2,3)%msg(2:4))
if(trg%cmp%pcmp(2,3)%msg .ne. "A234E") print*,"221"
if(trg%cmp%pcmp(2,3)%ii .ne. 10) print*,"222"
if(trg%cmp%pcmp(1,2)%ii .ne. 20) print*,"223"
print*,"Pass"
end subroutine

subroutine sub(dmy,arg)
class(t),pointer,intent(in) :: dmy(:,:)
character(len=:),pointer,intent(in) :: arg

if(LEN(arg) /= 3) print*,"125",LEN(arg)
if(arg /= "BCD") print*,"126"
arg = "234"

select type(dmy)
        class is (t)
           if(dmy(2,3)%ii .ne. 20) print*,"121"
           if(dmy(1,5)%ii .ne. 20) print*,"122"
           if(size(dmy) .ne. 50) print*,"123"
           dmy(2,3)%ii = 10
        class default
           print*,"124"
end select
end subroutine
end module

program main
USE m1
call fun
end
