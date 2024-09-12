module m1
type ty2
integer,allocatable,dimension(:) :: a1
end type

type, extends(ty2)::ts
end type

type ty3
type(ty2),allocatable,dimension(:) :: al2
class(ty2),allocatable,dimension(:) :: al3
end type

end module m1

use m1
type(ty3):: str
integer::x(10)

allocate(str%al2(10))
allocate(str%al2(1)%a1(2))

x=(/(i,i=121,130)/)

str%al2=(/(ty2(x),i=1,10)/)

if(str%al2(1)%a1(1) /= 121) print*, "101",str%al2(1)%a1(1)
if(str%al2(1)%a1(5) /= 125) print*, "102"
if(str%al2(5)%a1(1) /= 121) print*, "103"
if(str%al2(5)%a1(5) /= 125) print*, "104"
if(size(str%al2) /= 10) print*, "105",size(str%al2)

str%al3=(/(str%al2(i),i=1,10)/)
if(str%al3(1)%a1(1) /= 121) print*, "101",str%al2(1)%a1(1)
if(str%al3(1)%a1(5) /= 125) print*, "102"
if(str%al3(5)%a1(1) /= 121) print*, "103"
if(str%al3(5)%a1(5) /= 125) print*, "104",str%al3(5)%a1(5)
if(size(str%al3) /= 10) print*, "105",size(str%al2)

select type (x => str%al3)
type is (ty2)
    print*, "PASS"
class default
    print*,"ERROR"
end select
end
