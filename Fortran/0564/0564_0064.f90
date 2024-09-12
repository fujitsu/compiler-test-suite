module m1
type ty2
integer,allocatable,dimension(:) :: a1
end type

type ty3
type(ty2),allocatable,dimension(:) :: al2
end type

end module m1

use m1
type(ty3) :: str
type(ty3) :: str2
integer::x(10)

allocate(str%al2(10))
allocate(str2%al2(10))

x=(/(i,i=111,120)/)
str2%al2=(/(ty2(x),i=1,10)/)

x=(/(i,i=1,10)/)
str%al2=(/(ty2(x),i=1,10)/)

str%al2=(/(str2%al2(i),i=1,5)/)

if(str%al2(1)%a1(1) /= 111) print*, "101"
if(str%al2(1)%a1(5) /= 115) print*, "102"
if(str%al2(5)%a1(1) /= 111) print*, "103"
if(str%al2(5)%a1(5) /= 115) print*, "104"
if(size(str%al2) /= 5) print*, "105"
print *,"PASS"
end

