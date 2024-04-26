type t1
 integer,pointer::aptr(:,:,:,:)
end type

type tt1
 type(t1) :: cmp
end type

type(tt1) :: obj
integer,target :: trg(10,10,10,10)=21
integer::i=1,j=2
obj%cmp%aptr=>trg(:,:,:,2:6)

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

if(is_contiguous(obj%cmp%aptr) .neqv. .true.) print*,114,'obj%cmp%aptr'
if(is_contiguous(obj%cmp%aptr(:,:,:,:)) .neqv. .true.) print*,115,'obj%cmp%aptr(:,:,:,:)'
if(is_contiguous(obj%cmp%aptr(2:,:,:,:)) .neqv. .false.) print*,116,'obj%cmp%aptr(2:,:,:,:)'
if(is_contiguous(obj%cmp%aptr(2,:,:,:)) .neqv. .false.) print*,117,'obj%cmp%aptr(2,:,:,:)'
if(is_contiguous(obj%cmp%aptr(:,:,:,2)) .neqv. .true.) print*,118,'obj%cmp%aptr(:,:,:,2)'
if(is_contiguous(obj%cmp%aptr(:,:,:,2:)) .neqv. .true.) print*,119,'obj%cmp%aptr(:,:,:,2:)'
if(is_contiguous(obj%cmp%aptr(:,2:,:,:)) .neqv. .false.) print*,120,'obj%cmp%aptr(:,2:,:,:)'
if(is_contiguous(obj%cmp%aptr(:,2,:,:)) .neqv. .false.) print*,121,'obj%cmp%aptr(:,2,:,:)'
if(is_contiguous(obj%cmp%aptr(:,i,:,:)) .neqv. .false.) print*,122,'obj%cmp%aptr(:,i,:,:)'
if(is_contiguous(obj%cmp%aptr(:,:,:,:2)) .neqv. .true.) print*,123,'obj%cmp%aptr(:,:,:,:2)'
if(is_contiguous(obj%cmp%aptr(:,:,:,::2)) .neqv. .false.) print*,124,'obj%cmp%aptr(:,:,:,::2)'
if(is_contiguous(obj%cmp%aptr(:,:,1:10,:)) .neqv. .true.) print*,1241,'obj%cmp%aptr(:,:,1:10,:)'
if(is_contiguous(obj%cmp%aptr(:,:,:,::i)) .neqv. .true.) print*,125,'obj%cmp%aptr(:,:,:,::i)'
if(is_contiguous(obj%cmp%aptr(:,:,:,::j)) .neqv. .false.) print*,126,'obj%cmp%aptr(:,:,:,::j)'
if(is_contiguous(obj%cmp%aptr(:,:,:,[1,2,3])) .neqv. .false.) print*,126,'obj%cmp%aptr(:,:,:,[1,2,3])'

print*,'pass'
end
