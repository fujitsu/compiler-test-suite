implicit none
integer :: jj
type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch
end type

type(ty),allocatable :: obj1(:)

Allocate(obj1(10))
do jj=1,10,2
Allocate(obj1(jj)%c1(5),obj1(jj)%ch)
obj1(jj)%c1 = 20
obj1(jj)%iii = 30
obj1(jj)%ch = 'e'
end do

call s1(obj1(1:10:2))
do jj=1,10,2
if(.NOT. Allocated(obj1(jj)%c1)) then
print *,201,jj
else
 if(obj1(jj)%c1(1) .ne. 20) print *,202, obj1(jj)%c1(1)
 if(obj1(jj)%iii(1) .ne. 30) print *,203, obj1(jj)%iii
 if(obj1(jj)%ch .ne. 'e') print *,204, obj1(jj)%ch
 if(obj1(jj)%c1(3) .ne. 20) print *,205, obj1(jj)%c1(1)
 if(obj1(jj)%c1(5) .ne. 20) print *,206, obj1(jj)%c1(1)
end if
end do

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty),value :: dmy(5)
    dmy(1)%c1 = 40
    dmy(1)%iii = 50
    dmy(1)%ch = 'g'
    dmy(2)%c1 = 40
    dmy(2)%ch = 'g'
    dmy(3)%c1 = 40
    dmy(3)%ch = 'g'
    dmy(4)%c1 = 40
    dmy(4)%ch = 'g'
    dmy(5)%c1 = 40
    dmy(5)%ch = 'g'
    if(.NOT. Allocated(dmy(1)%c1)) print *,101
    if(.NOT. Allocated(dmy(2)%c1)) print *,102
    if(.NOT. Allocated(dmy(3)%c1)) print *,103
    if(.NOT. Allocated(dmy(4)%c1)) print *,104
    if(.NOT. Allocated(dmy(5)%c1)) print *,105
    if(.NOT. Allocated(dmy(1)%ch)) print *,106
    if(.NOT. Allocated(dmy(2)%ch)) print *,107
    if(.NOT. Allocated(dmy(3)%ch)) print *,108
    if(.NOT. Allocated(dmy(4)%ch)) print *,109
    if(.NOT. Allocated(dmy(5)%ch)) print *,110
    DEALLOCATE(dmy(1)%c1,dmy(1)%ch)
    DEALLOCATE(dmy(2)%c1,dmy(2)%ch)
    DEALLOCATE(dmy(3)%c1,dmy(3)%ch)
    DEALLOCATE(dmy(4)%c1,dmy(4)%ch)
    DEALLOCATE(dmy(5)%c1,dmy(5)%ch)
end subroutine
end
