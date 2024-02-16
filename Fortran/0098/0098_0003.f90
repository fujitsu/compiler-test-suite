type ty
integer :: x=1
contains
end type
type,extends(ty):: t2
integer :: y=2
contains
end type
type,extends(t2):: t3
integer :: z=3
contains
end type

type tt1
integer :: xx=4
type(t3) :: o3
contains
end type


type(ty) :: obj
type(t2) :: obj2
type(t3) :: obj3
type(tt1) :: oo1
if(obj%x /=1) print *,101
if(obj2%y /=2) print *,102
if(obj3%z /=3) print *,103
if(oo1%xx /=4) print *,104
if(oo1%o3%x/=1) print *,105
print *,"Pass"

end
