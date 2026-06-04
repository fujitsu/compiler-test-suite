type ty
integer(kind=2) :: xx(3,3)
character :: cc(2,2)
end type ty

type(ty)::obj

call sub1(obj)
contains
subroutine sub1(dmy1)
type(*)::dmy1(..)
if(any(lbound(dmy1)/=1))print*,"101"
if(is_contiguous(dmy1) .neqv. .TRUE.)print*,"102"
call sub2((/ty(2,'a'),ty(3,'b'),ty(4,'b'),ty(5,'d')/))
end subroutine
subroutine sub2(dmy2)
type(*)::dmy2(..)
if(any(lbound(dmy2)/=1))print*,"103"
if(any(ubound(dmy2)/=4))print*,"104"
if(is_contiguous(dmy2) .neqv. .TRUE.)print*,"105"
print*,"PASS"
end subroutine sub2
end


