module m1
type ty2
integer,allocatable,dimension(:) :: a1
end type

type, extends(ty2)::ts
end type

type ty3
class(ty2),allocatable,dimension(:) :: al2
end type
end module m1

use m1
type(ty3) :: str

class(ty2), allocatable:: arr_ty2(:)
integer::x(10)

allocate(arr_ty2(10))
allocate(str%al2(10))

x=(/(i,i=1,10)/)
str%al2=(/(ty2(x),i=1,10)/)

szLHS = size(str%al2)

x=(/(i,i=111,120)/)
arr_ty2=(/(ts(x),i=1,10)/)

str%al2=(/arr_ty2(1:5)/)
if(size(str%al2)/=5) print*, "1001", size(str%al2)
str%al2=(/(arr_ty2(1:5),i=5,5)/)
if(size(str%al2)/=5) print*, "1002", size(str%al2)
szRHS = size(str%al2)

if(szRHS .ne. 5) print*,"102"
if (szLHS == szRHS)print*, "101", size(str%al2)

select type (x => str%al2)
type is (ty2)
    print*, "pass"
class default
        print*,"ERROR"
end select
end
