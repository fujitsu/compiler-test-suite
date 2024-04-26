integer,target :: trg(10:-2,10:-3,10:-3,10:0)=9
integer::i=1,j=2

if(is_contiguous(trg) .neqv. .true.) print*,101,'trg'
if(is_contiguous(trg(:,:,:,:)) .neqv. .true.) print*,102,'trg(:,:,:,:)'
if(is_contiguous(trg(2:,:,:,:)) .neqv. .true.) print*,103,'trg(2:,:,:,:)'
if(is_contiguous(trg(:,:,:,2:)) .neqv. .true.) print*,106,'trg(:,:,:,2:)'
if(is_contiguous(trg(:,2:,:,:)) .neqv. .true.) print*,107,'trg(:,2:,:,:)'
if(is_contiguous(trg(:,i,:,:)) .neqv. .true.) print*,109,'trg(:,i,:,:)'
if(is_contiguous(trg(:,:,:,:2)) .neqv. .true.) print*,110,'trg(:,:,:,:2)'
if(is_contiguous(trg(:,:,:,::2)) .neqv. .true.) print*,111,'trg(:,:,:,::2)'
if(is_contiguous(trg(:,:,10:-3,:)) .neqv. .true.) print*,112,'trg(:,:,1:10,:)'
if(is_contiguous(trg(:,:,:,::-i)) .neqv. .true.) print*,113,'trg(:,:,:,::i)'
if(is_contiguous(trg(:,:,:,::j)) .neqv. .true.) print*,114,'trg(:,:,:,::j)'
if(is_contiguous(trg(:,:,:,[2,3])) .neqv. .true.) print*,115
if(is_contiguous(trg(:,:,[2,3],:)) .neqv. .true.) print*,116

print*,'pass'
end
