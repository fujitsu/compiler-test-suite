type ty
integer,pointer::aa(:)
end type ty
type(ty), pointer:: obj
allocate(obj)
allocate(obj%aa(10))
obj%aa =10
call sub(obj%aa)
if(obj%aa(1).ne.20)print*,"108"
contains
subroutine sub(dmy3)
integer,optional,contiguous::dmy3(:)
if (present(dmy3)) then
if(is_contiguous(dmy3) .NEQV. .TRUE.)print*,"106"
dmy3(1) =20
endif
print*,"PASS"
end subroutine sub
end
