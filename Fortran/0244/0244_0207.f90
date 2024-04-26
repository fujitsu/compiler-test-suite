integer,pointer::aptr(:,:,:)
integer,target :: trg(10,9,10)=2
integer::i=1,j=3
aptr=>trg(:,:,2:6)


call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:)
integer,pointer::ptr(:,:,:)
integer :: arc(4)=2

ptr=>dptr
if(is_contiguous(ptr(:,:,arc(2):arc(2)+1))) print*,'pass'
if(is_contiguous(ptr) .neqv. .true.) print*,101,'ptr'
if(is_contiguous(ptr(:,:,:)) .neqv. .true.) print*,102,'ptr(:,:,:)'
if(is_contiguous(ptr(2:,:,:)) .neqv. .false.) print*,103,'ptr(2:,:,:)'
if(is_contiguous(ptr(2,:,:)) .neqv. .false.) print*,104,'ptr(2,:,:)'
if(is_contiguous(ptr(:,:,2)) .neqv. .true.) print*,105,'ptr(:,:,2)'
if(is_contiguous(ptr(:,:,2:)) .neqv. .true.) print*,106,'ptr(:,:,2:)'
if(is_contiguous(ptr(:,2:,:)) .neqv. .false.) print*,107,'ptr(:,2:,:)'
if(is_contiguous(ptr(:,2,:)) .neqv. .false.) print*,108,'ptr(:,2,:)'
if(is_contiguous(ptr(:,i,:)) .neqv. .false.) print*,109,'ptr(:,i,:)'
if(is_contiguous(ptr(:,:,:2)) .neqv. .true.) print*,110,'ptr(:,:,:2)'
if(is_contiguous(ptr(:,:,::2)) .neqv. .false.) print*,111,'ptr(:,:,::2)'
if(is_contiguous(ptr(:,:,::i)) .neqv. .true.) print*,112,'ptr(:,:,::i)'
if(is_contiguous(ptr(:,:,::j)) .neqv. .false.) print*,113,'ptr(:,:,::j)'
if(is_contiguous(ptr(:,1:9,:)) .neqv. .true.) print*,114,'ptr(:,1:9,:)'
if(is_contiguous(ptr(i:j*j+1,i:j*j,i:5)) .neqv. .true.) print*,115,'ptr(i:j*j+1,i:j*j,i:5)'
if(is_contiguous(ptr(1:10,1:9,1:5)) .neqv. .true.) print*,116,'ptr(i:j*j+1,i:j*j,i:5)'
end subroutine
end
