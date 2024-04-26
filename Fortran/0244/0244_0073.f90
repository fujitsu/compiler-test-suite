integer,target :: trg(10,10,10,10)=22
integer::i=1,j=2

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
call sub(trg(:,:,:,2:6))

contains
subroutine sub(aptr)
integer::aptr(:,:,:,:)
if(is_contiguous(aptr) .neqv. .true.) print*,201,'aptr'
if(is_contiguous(aptr(:,:,:,:)) .neqv. .true.) print*,202,'aptr(:,:,:,:)'
if(is_contiguous(aptr(2:,:,:,:)) .neqv. .false.) print*,203,'aptr(2:,:,:,:)'
if(is_contiguous(aptr(2,:,:,:)) .neqv. .false.) print*,204,'aptr(2,:,:,:)'
if(is_contiguous(aptr(:,:,:,2)) .neqv. .true.) print*,205,'aptr(:,:,:,2)'
if(is_contiguous(aptr(:,:,:,2:)) .neqv. .true.) print*,206,'aptr(:,:,:,2:)'
if(is_contiguous(aptr(:,2:,:,:)) .neqv. .false.) print*,207,'aptr(:,2:,:,:)'
if(is_contiguous(aptr(:,2,:,:)) .neqv. .false.) print*,208,'aptr(:,2,:,:)'
if(is_contiguous(aptr(:,i,:,:)) .neqv. .false.) print*,209,'aptr(:,i,:,:)'
if(is_contiguous(aptr(:,:,:,:2)) .neqv. .true.) print*,210,'aptr(:,:,:,:2)'
if(is_contiguous(aptr(:,:,:,::2)) .neqv. .false.) print*,211,'aptr(:,:,:,::2)'
if(is_contiguous(aptr(:,:,1:10,:)) .neqv. .true.) print*,212,'aptr(:,:,1:10,:)'
if(is_contiguous(aptr(:,:,:,::i)) .neqv. .true.) print*,213,'aptr(:,:,:,::i)'
if(is_contiguous(aptr(:,:,:,::j)) .neqv. .false.) print*,214,'aptr(:,:,:,::j)'

call subb2(aptr)
end subroutine

subroutine subb2(dptr)
integer,target::dptr(:,:,:,:)
integer,pointer::dd(:,:,:,:)

if(is_contiguous(dptr) .neqv. .true.) print*,201,'dptr'
if(is_contiguous(dptr(:,:,:,:)) .neqv. .true.) print*,202,'dptr(:,:,:,:)'
if(is_contiguous(dptr(2:,:,:,:)) .neqv. .false.) print*,203,'dptr(2:,:,:,:)'
if(is_contiguous(dptr(2,:,:,:)) .neqv. .false.) print*,204,'dptr(2,:,:,:)'
if(is_contiguous(dptr(:,:,:,2)) .neqv. .true.) print*,205,'dptr(:,:,:,2)'
if(is_contiguous(dptr(:,:,:,2:)) .neqv. .true.) print*,206,'dptr(:,:,:,2:)'
if(is_contiguous(dptr(:,2:,:,:)) .neqv. .false.) print*,207,'dptr(:,2:,:,:)'
if(is_contiguous(dptr(:,2,:,:)) .neqv. .false.) print*,208,'dptr(:,2,:,:)'
if(is_contiguous(dptr(:,i,:,:)) .neqv. .false.) print*,209,'dptr(:,i,:,:)'
if(is_contiguous(dptr(:,:,:,:2)) .neqv. .true.) print*,210,'dptr(:,:,:,:2)'
if(is_contiguous(dptr(:,:,:,::2)) .neqv. .false.) print*,211,'dptr(:,:,:,::2)'
if(is_contiguous(dptr(:,:,:,::i)) .neqv. .true.) print*,212,'dptr(:,:,:,::i)'
if(is_contiguous(dptr(:,:,:,::j)) .neqv. .false.) print*,213,'dptr(:,:,:,::j)'
if(is_contiguous(dptr(:,:,1:10,:)) .neqv. .true.) print*,214,'dptr(:,:,1:10,:)'

dd=>dptr(:,:,1:5,:)

if(is_contiguous(dd) .neqv. .false.) print*,301,'dd'
if(is_contiguous(dd(:,:,:,:)) .neqv. .false.) print*,302,'dd(:,:,:,:)'
if(is_contiguous(dd(2:,:,:,:)) .neqv. .false.) print*,303,'dd(2:,:,:,:)'
if(is_contiguous(dd(2,:,:,:)) .neqv. .false.) print*,304,'dd(2,:,:,:)'
if(is_contiguous(dd(:,:,:,2)) .neqv. .true.) print*,305,'dd(:,:,:,2)'
if(is_contiguous(dd(:,:,:,2:)) .neqv. .false.) print*,306,'dd(:,:,:,2:)'
if(is_contiguous(dd(:,2:,:,:)) .neqv. .false.) print*,307,'dd(:,2:,:,:)'
if(is_contiguous(dd(:,2,:,:)) .neqv. .false.) print*,308,'dd(:,2,:,:)'
if(is_contiguous(dd(:,i,:,:)) .neqv. .false.) print*,309,'dd(:,i,:,:)'
if(is_contiguous(dd(:,:,:,:2)) .neqv. .false.) print*,310,'dd(:,:,:,:2)'
if(is_contiguous(dd(:,:,:,::2)) .neqv. .false.) print*,311,'dd(:,:,:,::2)'
if(is_contiguous(dd(:,:,:,::i)) .neqv. .false.) print*,312,'dd(:,:,:,::i)'
if(is_contiguous(dd(:,:,:,::j)) .neqv. .false.) print*,313,'dd(:,:,:,::j)'
if(is_contiguous(dd(:,:,1:5,:)) .neqv. .false.) print*,314,'dd(:,:,1:10,:)'

print*,'pass'
end subroutine
end
