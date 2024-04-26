type ty
integer :: aa(10,10) = 10
end type ty
type(ty), allocatable:: obj
allocate(obj)

call sub(obj%aa(2,1:10:2))
if(obj%aa(2,1).ne.20)print*,"108"
contains
subroutine sub(dmy3)

integer,contiguous::dmy3(:)
if(is_contiguous(dmy3) .NEQV. .TRUE.)print*,"106"

dmy3 =20
print*,"PASS"
end subroutine sub
end
