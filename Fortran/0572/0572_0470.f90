type ty
integer(kind=2) :: xx(3,3)
character :: cc(2,2)
end type ty

type(ty)::obj

call sub1(obj)
contains
subroutine sub1(dmy1)
type(ty)::dmy1(..)
if(is_contiguous(dmy1) .neqv. .TRUE.)print*,"102"
call sub2((/ty(2,'a'),ty(3,'b'),ty(4,'b'),ty(5,'d')/))
end subroutine
subroutine sub2(dmy2)
type(*) :: dmy2(*)
if(is_contiguous(dmy2) .neqv. .TRUE.)print*,"101"
print*,"PASS"
end subroutine sub2
end


