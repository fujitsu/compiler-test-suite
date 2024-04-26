type ty
 integer :: ii=2
end type

type,extends(ty) :: ty2
 integer :: jj=4
end type

type(ty2) :: trg(10,10,10)

call sub(trg)

contains
subroutine sub(dptr)
class(ty)::dptr(:,:,:)

if(is_contiguous(dptr(fun(1,1,1)-2:fun(3,4,3),:,:)) .neqv. .true.) print*,101
if(is_contiguous(dptr(fun(1,1,1):fun(3,4,3),:,:)) .neqv. .false.) print*,102

if(is_contiguous(dptr(:,:,:))) print*,'pass'
end subroutine

function fun(d1,d2,d3)
integer :: d1,d2,d3,fun

fun=d1+d2+d3
end function
end
