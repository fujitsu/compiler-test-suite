integer,pointer,contiguous::aptr(:,:,:)
integer::i=1,j=2
integer,target :: trg(10,10,10)
integer :: vect(3)=[2,3,4]

trg=2
trg(:,:,2:6) = 3

aptr=>trg(:,:,2:6:i)
if(is_contiguous(trg) .neqv. .true.) print*,101,'trg' 
if(is_contiguous(trg(:,:,:)) .neqv. .true.) print*,102,'trg(:,:,:)' 
if(is_contiguous(trg(2:,:,:)) .neqv. .false.) print*,103,'trg(2:,:,:)' 
if(is_contiguous(trg(2,:,:)) .neqv. .false.) print*,104,'trg(2,:,:)' 
if(is_contiguous(trg(:,:,2)) .neqv. .true.) print*,105,'trg(:,:,2)' 
if(is_contiguous(trg(:,:,2:)) .neqv. .true.) print*,106,'trg(:,:,2:)' 
if(is_contiguous(trg(:,2:,:)) .neqv. .false.) print*,107,'trg(:,2:,:)' 
if(is_contiguous(trg(:,2,:)) .neqv. .false.) print*,108,'trg(:,2,:)' 
if(is_contiguous(trg(:,:,[2,3,4])) .neqv. .false.) print*,109,'trg(:,:,[2,3,4])' 
if(is_contiguous(trg(:,[2,3,4],:)) .neqv. .false.) print*,110,'trg(:,[2,3,4],:)' 

if(is_contiguous(aptr) .neqv. .true.) print*,201,'aptr' 
if(is_contiguous(aptr(:,:,:)) .neqv. .true.) print*,202,'aptr(:,:,:)' 
if(is_contiguous(aptr(2:,:,:)) .neqv. .false.) print*,203,'aptr(2:,:,:)' 
if(is_contiguous(aptr(2,:,:)) .neqv. .false.) print*,204,'aptr(2,:,:)' 
if(is_contiguous(aptr(:,:,2)) .neqv. .true.) print*,205,'aptr(:,:,2)' 
if(is_contiguous(aptr(:,:,2:)) .neqv. .true.) print*,206,'aptr(:,:,2:)' 
if(is_contiguous(aptr(:,2:,:)) .neqv. .false.) print*,207,'aptr(:,2:,:)' 
if(is_contiguous(aptr(:,2,:)) .neqv. .false.) print*,208,'aptr(:,2,:)' 
if(is_contiguous(aptr(:,:,vect)) .neqv. .false.) print*,209,'aptr(:,:,[2,3,4])' 
if(is_contiguous(aptr(:,vect,:)) .neqv. .false.) print*,210,'aptr(:,[2,3,4],:)' 
if(is_contiguous(aptr(:,j:,:)) .neqv. .false.) print*,211,'aptr(:,j:,:)' 
if(is_contiguous(aptr(:,:j,:)) .neqv. .false.) print*,212,'aptr(:,:j,:)' 
if(is_contiguous(aptr(:,::j,:)) .neqv. .false.) print*,213,'aptr(:,::j,:)' 

call sub(aptr)

contains
subroutine sub(dptr)
integer::dptr(:,:,:)
if(is_contiguous(dptr) .neqv. .true.) print*,301,'dptr' 
if(is_contiguous(dptr(:,:,:)) .neqv. .true.) print*,302,'dptr(:,:,:)' 
if(is_contiguous(dptr(2:,:,:)) .neqv. .false.) print*,303,'dptr(2:,:,:)' 
if(is_contiguous(dptr(2,:,:)) .neqv. .false.) print*,304,'dptr(2,:,:)' 
if(is_contiguous(dptr(:,:,2)) .neqv. .true.) print*,305,'dptr(:,:,2)' 
if(is_contiguous(dptr(:,:,2:)) .neqv. .true.) print*,306,'dptr(:,:,2:) shud b true???' 
if(is_contiguous(dptr(:,2:,:)) .neqv. .false.) print*,307,'dptr(:,2:,:)' 
if(is_contiguous(dptr(:,2,:)) .neqv. .false.) print*,308,'dptr(:,2,:)' 
if(is_contiguous(dptr(:,:,vect)) .neqv. .false.) print*,309,'dptr(:,:,[2,3,4])' 
if(is_contiguous(dptr(:,vect,:)) .neqv. .false.) print*,310,'dptr(:,[2,3,4],:)' 

print*,'pass'
end subroutine
end
