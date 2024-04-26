type ty
integer,pointer:: aa(:)
end type ty
type(ty),pointer:: obj
allocate(obj)
allocate(obj%aa(10))
obj%aa = 10

call sub(obj%aa(1:4:4))
if(obj%aa(1).ne.20)print*,"108"
if(obj%aa(2).ne.10)print*,"108"
contains
subroutine sub(dmy3)

integer,contiguous::dmy3(:)

if(loc(dmy3).eq.loc(obj%aa))print*,"103"
if(is_contiguous(dmy3) .NEQV. .TRUE.)print*,"106"

dmy3(1) =20
print*,"PASS"
end subroutine sub
end
