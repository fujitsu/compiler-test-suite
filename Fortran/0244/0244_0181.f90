character(len=6) :: trg(-1:10,-1:10,-1:10)

trg = 'jajaja'

call sub(trg)

contains
subroutine sub(dptr)
character(len=6)::dptr(:,:,:)

if(is_contiguous(dptr(fun(1,1,1)-4+2:fun(3,4,3)+2,:,:)) .neqv. .true.) print*,101
if(is_contiguous(dptr(fun(1,1,1):fun(3,4,3),:,:)) .neqv. .false.) print*,102

if(is_contiguous(dptr(:,:,:))) print*,'pass'
end subroutine

function fun(d1,d2,d3)
integer :: d1,d2,d3,fun

fun=d1+d2+d3
end function
end
