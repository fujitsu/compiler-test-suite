type ty
integer xx
end type
type,extends(ty) :: ty1
integer yy
end type

class(ty),pointer :: PTR=>NULL()
type(ty1),target :: TARG1
type(ty),target :: TARG
type(ty) :: obj
type(ty1) :: obj1

if (.not.same_type_as(PTR,obj)) print *,101
PTR => TARG1
PTR%xx = 4 
print *,'pass'
END

