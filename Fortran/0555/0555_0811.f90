program main

type TY
integer :: ii
end type

type,extends(TY):: ty1
integer :: kk
end type

type,extends(Ty1):: ty2
integer :: kk1
end type

type,extends(TY2):: ty3
integer :: kk2
end type

type point1
type(ty3),pointer:: obj1(:)
end type

type point
type(point1):: obj2
end type

type(point) :: tar(10)
type(ty3) :: tar1(10)
class(ty),pointer :: tar2(:)

tar2=>NULL(tar(1)%obj2%obj1)
 
if (SAME_type_AS(tar2,tar1) .neqv. .TRUE.)then
print *,201
else
print *,"pass"
endif

allocate(ty3:: tar2(10))

SELECT TYPE(tar2)
TYPE IS(ty)
print *,101
TYPE IS(ty1)
print *,201
TYPE IS(ty2)
print *,202
TYPE IS(ty3)
print *,"pass"
CLASS IS(ty)
print *,303
CLASS IS(ty1)
print *,404
CLASS IS(ty2)
print *,505
END SELECT
end program
