integer,allocatable :: trg(:,:,:)

integer :: x=2,y=3

interface
subroutine sub(dptr)
integer::dptr(:,:,:)
end subroutine
end interface

allocate(trg(x*(x+y),y+(x+x),8))
trg = 3

call sub(trg(:,:,2:6))
end

subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr(:,:,1:5:2)) .eqv. .false.) then
 print*,'pass'
else
 print*,101
endif
end subroutine
