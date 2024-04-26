integer :: trg(10,10,10)

interface
subroutine sub(dptr)
integer::dptr(:,:,:)
end subroutine
end interface

trg = 3

call sub(trg)
end

subroutine sub(dptr)
integer::dptr(:,:,:)

if(is_contiguous(dptr(fun(1,1,1)-2:fun(3,4,3),:,:)) .neqv. .true.) print*,101
if(is_contiguous(dptr(fun(1,1,1):fun(3,4,3),:,:)) .neqv. .false.) print*,102

if(is_contiguous(dptr(:,:,:))) print*,'pass'

contains
function fun(d1,d2,d3)
integer :: d1,d2,d3,fun

fun=d1+d2+d3
end function
end subroutine
