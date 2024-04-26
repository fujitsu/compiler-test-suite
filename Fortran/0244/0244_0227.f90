 integer,pointer::aptr(:,:,:,:)

integer,target :: trg(10,10,10,10)=22

integer::i=1,j=2
logical :: A = .false. , B = .false.
aptr=>trg(:,:,:,2:6)

if((A .or. B .or.is_contiguous(trg)) .neqv. .true.) print*,101,'trg'
if((A .or. B .or.is_contiguous(trg(:,:,:,:))) .neqv. .true.) print*,102,'trg(:,:,:,:)'
if((A .or. B .or.is_contiguous(trg(2:,:,:,:))) .neqv. .false.) print*,103,'trg(2:,:,:,:)'
if((A .or. B .or.is_contiguous(trg(2,:,:,:))) .neqv. .false.) print*,104,'trg(2,:,:,:)'
if((A .or. B .or.is_contiguous(trg(:,:,:,2))) .neqv. .true.) print*,105,'trg(:,:,:,2)'
if((A .or. B .or.is_contiguous(trg(:,:,:,2:))) .neqv. .true.) print*,106,'trg(:,:,:,2:)'
if((A .or. B .or.is_contiguous(trg(:,2:,:,:))) .neqv. .false.) print*,107,'trg(:,2:,:,:)'
if((A .or. B .or.is_contiguous(trg(:,2,:,:))) .neqv. .false.) print*,108,'trg(:,2,:,:)'
if((A .or. B .or.is_contiguous(trg(:,i,:,:))) .neqv. .false.) print*,117,'trg(:,i,:,:)'
if((A .or. B .or.is_contiguous(trg(:,:,:,:2))) .neqv. .true.) print*,118,'trg(:,:,:,:2)'
if((A .or. B .or.is_contiguous(trg(:,:,:,::2))) .neqv. .false.) print*,119,'trg(:,:,:,::2)'
if((A .or. B .or.is_contiguous(trg(:,:,:,::i))) .neqv. .true.) print*,120,'trg(:,:,:,::i)'
if((A .or. B .or.is_contiguous(trg(:,:,:,::j))) .neqv. .false.) print*,121,'trg(:,:,:,::j)'
if((A .or. B .or.is_contiguous(trg(:,:,1:10,:))) .neqv. .true.) print*,1131,'trg(:,:,1:10,:)'

if((A .or. B .or.is_contiguous(aptr)) .neqv. .true.) print*,109,'aptr'
if((A .or. B .or.is_contiguous(aptr(:,:,:,:))) .neqv. .true.) print*,110,'aptr(:,:,:,:)'
if((A .or. B .or.is_contiguous(aptr(2:,:,:,:))) .neqv. .false.) print*,111,'aptr(2:,:,:,:)'
if((A .or. B .or.is_contiguous(aptr(2,:,:,:))) .neqv. .false.) print*,112,'aptr(2,:,:,:)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,2))) .neqv. .true.) print*,113,'aptr(:,:,:,2)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,2:))) .neqv. .true.) print*,114,'aptr(:,:,:,2:)'
if((A .or. B .or.is_contiguous(aptr(:,2:,:,:))) .neqv. .false.) print*,115,'aptr(:,2:,:,:)'
if((A .or. B .or.is_contiguous(aptr(:,2,:,:))) .neqv. .false.) print*,116,'aptr(:,2,:,:)'
if((A .or. B .or.is_contiguous(aptr(:,i,:,:))) .neqv. .false.) print*,117,'aptr(:,i,:,:)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,:2))) .neqv. .true.) print*,118,'aptr(:,:,:,:2)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,::2))) .neqv. .false.) print*,119,'aptr(:,:,:,::2)'
if((A .or. B .or.is_contiguous(aptr(:,:,1:10,:))) .neqv. .true.) print*,1191,'aptr(:,:,1:10,:)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,::i))) .neqv. .true.) print*,120,'aptr(:,:,:,::i)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,::j))) .neqv. .false.) print*,121,'aptr(:,:,:,::j)'
if((A .or. B .or.is_contiguous(aptr(:,:,:,[2,3,4]))) .neqv. .false.) print*,122,'aptr(:,:,:,[2,3,4])'
print*,'pass'
end
