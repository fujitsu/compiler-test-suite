character(len=8),pointer,contiguous::aptr(:,:,:)
integer::i=1, j=5
character(len=8),target :: trg(10,10,10)

trg='tadatada'
trg(:,:,2:6) = 'fufufufu'

aptr=>trg(:,:,2:6:1)(1:)

if(is_contiguous(aptr(1:10,1:10,1:5:2)) .neqv. .false.) print*,101
if(is_contiguous(aptr([1,2,3,4,5,6,7,8,9,10],:,:)) .neqv. .false.) print*,102
if(is_contiguous(aptr(i:j:i,i:j,1:5)) .neqv. .false.) print*,103
if(is_contiguous(aptr(i:j,i:j,i:j)) .neqv. .false.) print*,104
if(is_contiguous(aptr(1:j+j-j,:,:)) .neqv. .false.) print*,105
if(is_contiguous(aptr(2,:,:)) .neqv. .false.)  print*,106
if(is_contiguous(aptr)) print*,'pass'
end
