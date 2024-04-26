character(kind=4,len=4) :: trg(10,10,10)=4_'abcd'

trg = 4_'wxyz'

call sub(trg)

contains
subroutine sub(dptr)
character(kind=4,len=4)::dptr(:,:,:)
if(is_contiguous(dptr(:,:,:))) print*,'pass'
end subroutine
end
