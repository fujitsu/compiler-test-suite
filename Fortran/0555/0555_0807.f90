program main
type TY
integer :: ii
end type

type,extends(TY):: ty1
integer :: kk
end type

type,extends(TY1):: ty2
integer :: kkk
end type

class(ty),pointer :: ptr=>NULL()
type(ty),pointer :: tar

ptr=>NULL(tar)

if (SAME_type_AS(ptr,tar) .eqv. .TRUE.)then
print *,"pass"
else
print *,201
endif


allocate (ty1::ptr)

SELECT TYPE(ptr)
TYPE IS(ty)
print *,101
TYPE IS(ty1)
print *,"pass"
TYPE IS(ty2)
print *,202
CLASS IS(ty)
print *,303
CLASS IS(ty1)
print *,404
CLASS IS(ty2)
print *,505
END SELECT
end program
