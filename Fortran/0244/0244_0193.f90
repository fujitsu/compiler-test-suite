integer :: trg(10,10,10,10)=23
integer::i=1,j=2
logical :: A = .true., B= .false.

if((A .and. A .and. is_contiguous(trg)) .neqv. .true.) print*,101,'trg'
if((A .and. A .and. is_contiguous(trg(:,:,:,:))) .neqv. .true.) print*,102,'trg(:,:,:,:)'
if((B .and. B .and. is_contiguous(trg(2:,:,:,:))) .neqv. .false.) print*,103,'trg(2:,:,:,:)'
if((B .and. B .and. is_contiguous(trg(2,:,:,:))) .neqv. .false.) print*,104,'trg(2,:,:,:)'
if((A .and. A .and. is_contiguous(trg(:,:,:,2))) .neqv. .true.) print*,105,'trg(:,:,:,2)'
if((A .and. A .and. is_contiguous(trg(:,:,:,2:))) .neqv. .true.) print*,106,'trg(:,:,:,2:)'
if((B .and. B .and. is_contiguous(trg(:,2:,:,:))) .neqv. .false.) print*,107,'trg(:,2:,:,:)'
if((B .and. B .and. is_contiguous(trg(:,2,:,:))) .neqv. .false.) print*,108,'trg(:,2,:,:)'
if((B .and. B .and. is_contiguous(trg(:,i,:,:))) .neqv. .false.) print*,109,'trg(:,i,:,:)'
if((A .and. A .and. is_contiguous(trg(:,:,:,:2))) .neqv. .true.) print*,110,'trg(:,:,:,:2)'
if((B .and. B .and. is_contiguous(trg(:,:,:,::2))) .neqv. .false.) print*,111,'trg(:,:,:,::2)'
if((A .and. A .and. is_contiguous(trg(:,:,:,::i))) .neqv. .true.) print*,112,'trg(:,:,:,::i)'
if((B .and. B .and. is_contiguous(trg(:,:,:,::j))) .neqv. .false.) print*,113,'trg(:,:,:,::j)'
if((A .and. A .and. is_contiguous(trg(:,:,1:10,:))) .neqv. .true.) print*,1131,'trg(:,:,1:10,:)'

if(ff(trg(:,:,:,2:6:i)) == 1) print*,'pass'

contains
function ff(aptr)
integer :: ff
integer::aptr(:,:,:,:)

if((A .and. A .and. is_contiguous(aptr)) .neqv. .true.) print*,114,'aptr'
if((A .and. A .and. is_contiguous(aptr(:,:,:,:))) .neqv. .true.) print*,115,'aptr(:,:,:,:)'
if((B .and. A .and. is_contiguous(aptr(2:,:,:,:))) .neqv. .false.) print*,116,'aptr(2:,:,:,:)'
if((B .and. B .and. is_contiguous(aptr(2,:,:,:))) .neqv. .false.) print*,117,'aptr(2,:,:,:)'
if((A .and. A .and. is_contiguous(aptr(:,:,:,2))) .neqv. .true.) print*,118,'aptr(:,:,:,2)'
if((A .and. A .and. is_contiguous(aptr(:,:,:,2:))) .neqv. .true.) print*,119,'aptr(:,:,:,2:)'
if((B .and. B .and. is_contiguous(aptr(:,2:,:,:))) .neqv. .false.) print*,120,'aptr(:,2:,:,:)'
if((B .and. B .and. is_contiguous(aptr(:,2,:,:))) .neqv. .false.) print*,121,'aptr(:,2,:,:)'
if((B .and. B .and. is_contiguous(aptr(:,i,:,:))) .neqv. .false.) print*,122,'aptr(:,i,:,:)'
if((A .and. A .and. is_contiguous(aptr(:,:,:,:2))) .neqv. .true.) print*,123,'aptr(:,:,:,:2)'
if((B .and. B .and. is_contiguous(aptr(:,:,:,::2))) .neqv. .false.) print*,124,'aptr(:,:,:,::2)'
if((A .and. A .and. is_contiguous(aptr(:,:,1:10,:))) .neqv. .true.) print*,1241,'aptr(:,:,1:10,:)'
if((A .and. A .and. is_contiguous(aptr(:,:,:,::i))) .neqv. .true.) print*,125,'aptr(:,:,:,::i)'
if((B .and. B .and. is_contiguous(aptr(:,:,:,::j))) .neqv. .false.) print*,126,'aptr(:,:,:,::j)'
if((B .and. B .and. is_contiguous(aptr(:,:,:,[2,3,4]))) .neqv. .false.) print*,127,'aptr(:,:,:,[2,3,4])'

ff=1
end function
end
