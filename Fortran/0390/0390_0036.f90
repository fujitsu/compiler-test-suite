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

write(13,*)1,same_type_as(PTR,obj)
PTR => TARG1
PTR%xx = 4
!$OMP PARALLEL
write(13,*)2,same_type_as(PTR,obj1)
write(13,*)3,same_type_as(PTR,obj)
!$OMP END PARALLEL
print *,'pass'
END
