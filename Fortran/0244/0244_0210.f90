type tt
 integer,pointer::aptr(:,:,:,:)
end type

integer,target :: trg(10,10,10,10)=22
type(tt) :: obj

integer::i=1,j=2
obj%aptr=>trg(:,:,:,2:6)

if(is_contiguous(trg) .neqv. .true.) print*,101,'trg'
if(is_contiguous(trg(:,:,:,:)) .neqv. .true.) print*,102,'trg(:,:,:,:)'
if(is_contiguous(trg(2:,:,:,:)) .neqv. .false.) print*,103,'trg(2:,:,:,:)'
if(is_contiguous(trg(2,:,:,:)) .neqv. .false.) print*,104,'trg(2,:,:,:)'
if(is_contiguous(trg(:,:,:,2)) .neqv. .true.) print*,105,'trg(:,:,:,2)'
if(is_contiguous(trg(:,:,:,2:)) .neqv. .true.) print*,106,'trg(:,:,:,2:)'
if(is_contiguous(trg(:,2:,:,:)) .neqv. .false.) print*,107,'trg(:,2:,:,:)'
if(is_contiguous(trg(:,2,:,:)) .neqv. .false.) print*,108,'trg(:,2,:,:)'
if(is_contiguous(trg(:,i,:,:)) .neqv. .false.) print*,117,'trg(:,i,:,:)'
if(is_contiguous(trg(:,:,:,:2)) .neqv. .true.) print*,118,'trg(:,:,:,:2)'
if(is_contiguous(trg(:,:,:,::2)) .neqv. .false.) print*,119,'trg(:,:,:,::2)'
if(is_contiguous(trg(:,:,:,::i)) .neqv. .true.) print*,120,'trg(:,:,:,::i)'
if(is_contiguous(trg(:,:,:,::j)) .neqv. .false.) print*,121,'trg(:,:,:,::j)'
if(is_contiguous(trg(:,:,1:10,:)) .neqv. .true.) print*,1131,'trg(:,:,1:10,:)'

if(is_contiguous(obj%aptr) .neqv. .true.) print*,109,'obj%aptr'
if(is_contiguous(obj%aptr(:,:,:,:)) .neqv. .true.) print*,110,'obj%aptr(:,:,:,:)'
if(is_contiguous(obj%aptr(2:,:,:,:)) .neqv. .false.) print*,111,'obj%aptr(2:,:,:,:)'
if(is_contiguous(obj%aptr(2,:,:,:)) .neqv. .false.) print*,112,'obj%aptr(2,:,:,:)'
if(is_contiguous(obj%aptr(:,:,:,2)) .neqv. .true.) print*,113,'obj%aptr(:,:,:,2)'
if(is_contiguous(obj%aptr(:,:,:,2:)) .neqv. .true.) print*,114,'obj%aptr(:,:,:,2:)'
if(is_contiguous(obj%aptr(:,2:,:,:)) .neqv. .false.) print*,115,'obj%aptr(:,2:,:,:)'
if(is_contiguous(obj%aptr(:,2,:,:)) .neqv. .false.) print*,116,'obj%aptr(:,2,:,:)'
if(is_contiguous(obj%aptr(:,i,:,:)) .neqv. .false.) print*,117,'obj%aptr(:,i,:,:)'
if(is_contiguous(obj%aptr(:,:,:,:2)) .neqv. .true.) print*,118,'obj%aptr(:,:,:,:2)'
if(is_contiguous(obj%aptr(:,:,:,::2)) .neqv. .false.) print*,119,'obj%aptr(:,:,:,::2)'
if(is_contiguous(obj%aptr(:,:,1:10,:)) .neqv. .true.) print*,1191,'obj%aptr(:,:,1:10,:)'
if(is_contiguous(obj%aptr(:,:,:,::i)) .neqv. .true.) print*,120,'obj%aptr(:,:,:,::i)'
if(is_contiguous(obj%aptr(:,:,:,::j)) .neqv. .false.) print*,121,'obj%aptr(:,:,:,::j)'
if(is_contiguous(obj%aptr(:,:,:,[2,3,4])) .neqv. .false.) print*,122,'obj%aptr(:,:,:,[2,3,4])'
print*,'pass'
end
