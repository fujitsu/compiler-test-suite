type ty2
integer,allocatable,dimension(:) :: a1
end type

type,extends(ty2)::ts
integer :: a2(3)
end type

type ty3
type(ty2),allocatable,dimension(:) :: al2
end type

type ty4
class(ty2), allocatable:: arr_ty2(:)
end type

type(ty3) :: str
type(ty4) :: obj

allocate(ts::obj%arr_ty2(10))
allocate(str%al2(9))

allocate(obj%arr_ty2(3)%a1(2))
allocate(obj%arr_ty2(10)%a1(4))
obj%arr_ty2(3)%a1 = [40,50]
obj%arr_ty2(10)%a1 = [60,70,80,90]

str%al2=(/(fun(obj%arr_ty2))/)
if(size(str%al2) /= 10) print*,"101"
if(size(str%al2(3)%a1) /= 2) print*,"102", size(str%al2(3)%a1)
if(all(str%al2(3)%a1 /= [40,50])) print*,"103", str%al2(3)%a1
if(size(str%al2(10)%a1) /= 4) print*,"104", size(str%al2(10)%a1)
if(all(str%al2(10)%a1 /= [60,70,80,90])) print*,"105", str%al2(10)%a1
print*,"PASS"

contains
function fun(d1)
class(ty2), allocatable:: d1(:)
class(ty2), allocatable:: fun(:)
fun = d1
end
end
