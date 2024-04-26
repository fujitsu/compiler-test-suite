integer,allocatable,target :: trg(:,:,:,:)
integer,pointer::ptr(:,:,:,:)
integer :: i=1, j=2

allocate(trg(10,7,7,7))
trg = 3

ptr=>trg
if(is_contiguous(ptr(:,ff(2,3):ff(4,3),:,:)) .eqv. .false.) print*,'pass'

if(is_contiguous(ptr) .neqv. .true.) print*,101,'ptr'
if(is_contiguous(ptr(:,:,:,:)) .neqv. .true.) print*,102,'ptr(:,:,:,:)'
if(is_contiguous(ptr(2:,:,:,:)) .neqv. .false.) print*,103,'ptr(2:,:,:,:)'
if(is_contiguous(ptr(2,:,:,:)) .neqv. .false.) print*,104,'ptr(2,:,:,:)'
if(is_contiguous(ptr(:,:,:,2)) .neqv. .true.) print*,105,'ptr(:,:,:,2)'
if(is_contiguous(ptr(:,:,:,2:)) .neqv. .true.) print*,106,'ptr(:,:,:,2:)'
if(is_contiguous(ptr(:,2:,:,:)) .neqv. .false.) print*,107,'ptr(:,2:,:,:)'
if(is_contiguous(ptr(:,2,:,:)) .neqv. .false.) print*,108,'ptr(:,2,:,:)'
if(is_contiguous(ptr(:,i,:,:)) .neqv. .false.) print*,109,'ptr(:,i,:,:)'
if(is_contiguous(ptr(:,:,:,:2)) .neqv. .true.) print*,110,'ptr(:,:,:,:2)'
if(is_contiguous(ptr(:,:,:,::2)) .neqv. .false.) print*,111,'ptr(:,:,:,::2)'
if(is_contiguous(ptr(:,:,:,::i)) .neqv. .true.) print*,112,'ptr(:,:,:,::i)'
if(is_contiguous(ptr(:,:,:,::j)) .neqv. .false.) print*,113,'ptr(:,:,:,::j)'
if(is_contiguous(ptr(:,:,1:7,:)) .neqv. .true.) print*,114,'ptr(:,:,1:10,:)'
if(is_contiguous(ptr(:,:,:,[1,2,3])) .neqv. .false.) print*,115,'ptr(:,:,:,[1,2,3])'

contains
function ff(d1,d2)
integer :: ff,d1,d2

ff=d1+d2
end function
end
