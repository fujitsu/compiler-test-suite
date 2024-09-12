implicit none
integer :: jj
type ty
integer,allocatable :: c1(:)
integer :: iii(2)
character, allocatable :: ch
end type

type(ty) :: obj1(10)
integer::res
do jj=1,10
Allocate(obj1(jj)%c1(5),obj1(jj)%ch)
obj1(jj)%c1 = 20
obj1(jj)%iii = 30
obj1(jj)%ch = 'e'
end do
res=10
res=fun(obj1(1:10:2))
do jj=1,10,2
if(.NOT. Allocated(obj1(jj)%c1)) then
print *,201,jj
else
 if(obj1(jj)%c1(1) .ne. 20) print *,202, obj1(jj)%c1(1),jj
 if(obj1(jj)%iii(1) .ne. 30) print *,203, obj1(jj)%iii,jj
 if(obj1(jj)%ch .ne. 'e') print *,204, obj1(jj)%ch,jj
 if(obj1(jj)%c1(3) .ne. 20) print *,205, obj1(jj)%c1(3),jj
 if(obj1(jj)%c1(5) .ne. 20) print *,206, obj1(jj)%c1(5),jj
end if
end do
if(res /= 100)print*,099
print *,"Pass"
contains
pure function fun(dmy)
    type(ty),value :: dmy(5)
    integer::fun
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
    fun=100
end function
end

