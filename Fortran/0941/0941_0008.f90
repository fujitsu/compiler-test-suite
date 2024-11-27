type ty2
integer,allocatable,dimension(:) :: a1
end type

type,extends(ty2)::ts
integer :: a2(2)
end type

type ty3
type(ty2),allocatable,dimension(:) :: al2
end type

class(ty2), allocatable:: arr_ty2(:)

allocate(ts::arr_ty2(10))
allocate(arr_ty2(3)%a1(3))
allocate(arr_ty2(10)%a1(4))

arr_ty2(3)%a1 = [40,50,60]
arr_ty2(10)%a1 = [70,80,90,100]

call sub(arr_ty2)

contains 
subroutine sub(d1)
class(ty2) :: d1(:)
type(ty3) :: str

allocate(str%al2(9))

str%al2=(/(d1(i),i=1,10)/)
if(size(str%al2) /= 10) print*,"101", size(str%al2)
if(size(str%al2(3)%a1) /= 3) print*,"102"
if(all(str%al2(3)%a1 /= [40,50,60])) print*,"103"
if(size(str%al2(10)%a1) /= 4) print*,"104", size(str%al2(10)%a1)
if(all(str%al2(10)%a1 /= [70,80,90,100])) print*,"105",str%al2(10)%a1
if(allocated(str%al2(1)%a1)) print*, 107
print*,"PASS"
end
end
