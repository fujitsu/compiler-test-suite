integer,parameter:: z(10)=(/(i,i=1,10)/)
type ty2
integer,allocatable,dimension(:) :: a1
integer                          :: a2
end type

type, extends(ty2)::ts
integer                          :: a3
end type

type ty3
class(ty2),allocatable,dimension(:) :: al2
integer                          :: al3
end type
type(ty3) :: str

class(ty2), allocatable:: arr_ty2(:)
integer::x(10)

allocate(arr_ty2(10))

x=(/(i,i=1,10)/)
str%al2=(/(ty2(x,i),i=1,10)/)
k=0
select type (y => str%al2)
type is (ty2)
k=1
do n=1,10
if (any(y(n)%a1/=z)) print *,8001,n,y(n)%a1
if (    y(n)%a2/=n ) print *,8002,n,y(n)%a2
end do
class default
end select
if (k/=1) print *,9001,k

arr_ty2=(/(ts(x,i,i+1),i=1,5 )/)
k=0
select type (y => arr_ty2)
type is (ts)
k=1
do n=1,5 
if (   (y(n)%a3/=n+1)) print *,7001,n,y(n) %a3
if (any(y(n)%a1/=z)) print *,7002,n,y(n)%a1
if (    y(n)%a2/=n ) print *,7003,n,y(n)%a2
end do
class default
end select
if (k/=1) print *,9002,k

str%al2=arr_ty2
k=0
select type (y => str%al2)
type is (ty2)
k=1
type is (ts)
k=2
class default
end select
if (k/=2)print *,6001,k

str%al2=(/(arr_ty2,i=1,1)/)
k=0
select type (y => str%al2)
type is (ty2)
k=1
type is (ts)
k=2
class default
end select
if (k/=1)print *,5001,k
    print*, "pass"
end
