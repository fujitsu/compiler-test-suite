character(len=8),pointer,contiguous::aptr(:,:,:)
integer::i=1, j=5
character(len=8),target :: trg(10,10,10)='qwertyui'

trg='tadatada'
trg(:,:,2:6) = 'fufufufu'

aptr=>trg(:,:,2:6:i)(i:)

call sub(trg(:,:,2:6:i)(i:))

contains
subroutine sub(dptr)
character(len=8)::dptr(:,:,:)

if(is_contiguous(dptr(1:10,1:10,1:5:2)) .neqv. .false.) print*,102
if(is_contiguous(dptr([1,2,3,4,5,6,7,8,9,10],:,:)) .neqv. .false.) print*,103
if(is_contiguous(dptr(i:j:i,i:j,1:5)) .neqv. .false.) print*,104
if(is_contiguous(dptr(i:j,i:j,i:j)) .neqv. .false.) print*,105
if(is_contiguous(dptr(1:j+j-j,:,:)) .neqv. .false.) print*,106

if(is_contiguous(dptr(2,:,:)) .eqv. .false.) then
 if(is_contiguous(dptr)) print*,'pass'
else
 print*,101
endif
end subroutine
end
