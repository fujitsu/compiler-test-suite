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

type(ty2) :: arr_ty2(10)
integer::x(10)

allocate(str%al2(10))

x=(/(i,i=1,10)/)
str%al2=(/(ty2(x),i=1,10)/)

szLHS = size(str%al2)

x=(/(i,i=111,120)/)
arr_ty2=(/(ty2(x),i=1,10)/)

str%al2=(/(arr_ty2(i),i=1,5)/)
szRHS = size(str%al2)

if (szLHS == szRHS)print*, "101", size(str%al2)
if(szRHS .ne. 5) print*,"102"
print *,"PASS"
end
