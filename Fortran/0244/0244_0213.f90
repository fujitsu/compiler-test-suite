type tt
  integer,pointer::aptr(:,:,:,:)
end type

type(tt) :: obj
integer,target :: trg(10,10,10,10)=23
integer::i=1,j=2
obj%aptr=>trg(:,:,:,2:6:i)

if(is_contiguous(trg) .neqv. .true.) print*,101,'trg'
if(is_contiguous(trg(:,:,:,:)) .neqv. .true.) print*,102,'trg(:,:,:,:)'
if(is_contiguous(trg(2:,:,:,:)) .neqv. .false.) print*,103,'trg(2:,:,:,:)'
if(is_contiguous(trg(2,:,:,:)) .neqv. .false.) print*,104,'trg(2,:,:,:)'
if(is_contiguous(trg(:,:,:,2)) .neqv. .true.) print*,105,'trg(:,:,:,2)'
if(is_contiguous(trg(:,:,:,2:)) .neqv. .true.) print*,106,'trg(:,:,:,2:)'
if(is_contiguous(trg(:,2:,:,:)) .neqv. .false.) print*,107,'trg(:,2:,:,:)'
if(is_contiguous(trg(:,2,:,:)) .neqv. .false.) print*,108,'trg(:,2,:,:)'
if(is_contiguous(trg(:,i,:,:)) .neqv. .false.) print*,109,'trg(:,i,:,:)'
if(is_contiguous(trg(:,:,:,:2)) .neqv. .true.) print*,110,'trg(:,:,:,:2)'
if(is_contiguous(trg(:,:,:,::2)) .neqv. .false.) print*,111,'trg(:,:,:,::2)'
if(is_contiguous(trg(:,:,:,::i)) .neqv. .true.) print*,112,'trg(:,:,:,::i)'
if(is_contiguous(trg(:,:,:,::j)) .neqv. .false.) print*,113,'trg(:,:,:,::j)'
if(is_contiguous(trg(:,:,1:10,:)) .neqv. .true.) print*,1131,'trg(:,:,1:10,:)'

if(is_contiguous(obj%aptr) .neqv. .true.) print*,114,'obj%aptr'
if(is_contiguous(obj%aptr(:,:,:,:)) .neqv. .true.) print*,115,'obj%aptr(:,:,:,:)'
if(is_contiguous(obj%aptr(2:,:,:,:)) .neqv. .false.) print*,116,'obj%aptr(2:,:,:,:)'
if(is_contiguous(obj%aptr(2,:,:,:)) .neqv. .false.) print*,117,'obj%aptr(2,:,:,:)'
if(is_contiguous(obj%aptr(:,:,:,2)) .neqv. .true.) print*,118,'obj%aptr(:,:,:,2)'
if(is_contiguous(obj%aptr(:,:,:,2:)) .neqv. .true.) print*,119,'obj%aptr(:,:,:,2:)'
if(is_contiguous(obj%aptr(:,2:,:,:)) .neqv. .false.) print*,120,'obj%aptr(:,2:,:,:)'
if(is_contiguous(obj%aptr(:,2,:,:)) .neqv. .false.) print*,121,'obj%aptr(:,2,:,:)'
if(is_contiguous(obj%aptr(:,i,:,:)) .neqv. .false.) print*,122,'obj%aptr(:,i,:,:)'
if(is_contiguous(obj%aptr(:,:,:,:2)) .neqv. .true.) print*,123,'obj%aptr(:,:,:,:2)'
if(is_contiguous(obj%aptr(:,:,:,::2)) .neqv. .false.) print*,124,'obj%aptr(:,:,:,::2)'
if(is_contiguous(obj%aptr(:,:,1:10,:)) .neqv. .true.) print*,1241,'obj%aptr(:,:,1:10,:)'
if(is_contiguous(obj%aptr(:,:,:,::i)) .neqv. .true.) print*,125,'obj%aptr(:,:,:,::i)'
if(is_contiguous(obj%aptr(:,:,:,::j)) .neqv. .false.) print*,126,'obj%aptr(:,:,:,::j)'
if(is_contiguous(obj%aptr(:,:,:,[2,3,4])) .neqv. .false.) print*,127,'obj%aptr(:,:,:,[2,3,4])'

print*,'pass'
end
