type ty2
integer,allocatable,dimension(:) :: a1
end type

type, extends(ty2)::ts
end type

type ty3
class(ty2),allocatable,dimension(:) :: al2
end type
type(ty3) :: str

class(ty2), allocatable:: arr_ty2(:)
integer::x(10)

allocate(arr_ty2(10))
allocate(str%al2(10))

x=1
str%al2=(/(ty2(x),i=1,9)/)

arr_ty2=(/(ts(x),i=1,5 )/)

call z
str%al2=(/(arr_ty2,i=1,1)/)
select type (x => str%al2)
type is (ty2)
    print*, "pass"
class default
        print*,"ERROR"
end select
end
subroutine z
end
