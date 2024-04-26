type tt
 integer,pointer::aptr(:,:,:,:)
end type

type tt2
 type(tt) :: cmp1(3)
end type

type tt3
 type(tt2) :: cmp2(5)
end type

type tt4
 type(tt3) :: cmp3
end type

type(tt4) :: obj

integer,target :: trg(10,10,10,10)=21

integer::i=1,j=2
obj%cmp3%cmp2(3)%cmp1(2)%aptr=>trg(1:10,1:10,1:10,1:10)

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
if(is_contiguous(trg(:,:,1:10,:)) .neqv. .true.) print*,114,'trg(:,:,1:10,:)'

if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr) .neqv. .true.) print*,115,'obj%cmp3%cmp2(3)%cmp1(2)%aptr'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,:)) .neqv. .true.) print*,116,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(2:,:,:,:)) .neqv. .false.) print*,117,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(2:,:,:,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(2,:,:,:)) .neqv. .false.) print*,118,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(2,:,:,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,2)) .neqv. .true.) print*,119,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,2)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,2:)) .neqv. .true.) print*,120,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,2:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,2:,:,:)) .neqv. .false.) print*,121,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,2:,:,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,2,:,:)) .neqv. .false.) print*,122,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,2,:,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,i,:,:)) .neqv. .false.) print*,123,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,i,:,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,:2)) .neqv. .true.) print*,124,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,:2)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,::2)) .neqv. .false.) print*,125,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,::2)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,1:10,:)) .neqv. .true.) print*,126,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,1:10,:)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,::i)) .neqv. .true.) print*,127,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,::i)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,::j)) .neqv. .false.) print*,128,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,::j)'
if(is_contiguous(obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,[2,3,4])) .neqv. .false.) print*,129,'obj%cmp3%cmp2(3)%cmp1(2)%aptr(:,:,:,[2,3,4])'
print*,'pass'
end
