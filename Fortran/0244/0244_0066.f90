type tt
  integer,pointer::aptr(:,:,:,:)
end type

type(tt) :: obj
integer,target :: trg(10,10,10,10)=9
integer::i=1,j=2
obj%aptr=>trg(:,:,2:6,:)

if(is_contiguous(trg(:,:,:,::-1)) .neqv. .false.) print*,100,'trg(:,:,:,::-1)'
if(is_contiguous(trg) .neqv. .true.) print*,101,'trg '
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
if(is_contiguous(trg(:,:,1:10,:)) .neqv. .true.) print*,112,'trg(:,:,1:10,:)'
if(is_contiguous(trg(:,:,:,::i)) .neqv. .true.) print*,113,'trg(:,:,:,::i)'
if(is_contiguous(trg(:,:,:,::j)) .neqv. .false.) print*,114,'trg(:,:,:,::j)'

if(is_contiguous(obj%aptr) .neqv. .false.) print*,115,'obj%aptr'
if(is_contiguous(obj%aptr(:,:,:,:)) .neqv. .false.) print*,116,'obj%aptr(:,:,:,:)'
if(is_contiguous(obj%aptr(2:,:,:,:)) .neqv. .false.) print*,117,'obj%aptr(2:,:,:,:)'
if(is_contiguous(obj%aptr(2,:,:,:)) .neqv. .false.) print*,118,'obj%aptr(2,:,:,:)'
if(is_contiguous(obj%aptr(:,:,:,2)) .neqv. .true.) print*,119,'obj%aptr(:,:,:,2)'
if(is_contiguous(obj%aptr(:,:,:,2:)) .neqv. .false.) print*,120,'obj%aptr(:,:,:,2:)'
if(is_contiguous(obj%aptr(:,2:,:,:)) .neqv. .false.) print*,121,'obj%aptr(:,2:,:,:)'
if(is_contiguous(obj%aptr(:,2,:,:)) .neqv. .false.) print*,122,'obj%aptr(:,2,:,:)'
if(is_contiguous(obj%aptr(:,i,:,:)) .neqv. .false.) print*,123,'obj%aptr(:,i,:,:)'
if(is_contiguous(obj%aptr(:,:,:,:2)) .neqv. .false.) print*,124,'obj%aptr(:,:,:,:2)'
if(is_contiguous(obj%aptr(:,:,:,::2)) .neqv. .false.) print*,125,'obj%aptr(:,:,:,::2)'
if(is_contiguous(obj%aptr(:,:,1:5,:)) .neqv. .false.) print*,126,'obj%aptr(:,:,1:10,:)'
if(is_contiguous(obj%aptr(:,:,:,::i)) .neqv. .false.) print*,127,'obj%aptr(:,:,:,::i)'
if(is_contiguous(obj%aptr(:,:,:,::j)) .neqv. .false.) print*,128,'obj%aptr(:,:,:,::j)'
if(is_contiguous(obj%aptr(:,:,:,::-1)) .neqv. .false.) print*,129,'obj%aptr(:,:,:,::-1)'
call sub(trg(:,:,:,:))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:,:)
 
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
if(is_contiguous(dptr(:,:,1:10,:)) .neqv. .true.) print*,212,'dptr(:,:,1:10,:)'
if(is_contiguous(dptr(:,:,:,::i)) .neqv. .true.) print*,213,'dptr(:,:,:,::i)'
if(is_contiguous(dptr(:,:,:,::j)) .neqv. .false.) print*,214,'dptr(:,:,:,::j)'
if(is_contiguous(dptr(:,:,:,::-1)) .neqv. .false.) print*,215,'dptr(:,:,:,::-1)'

call ss2(dptr(:,:,1:5,:))

end subroutine

subroutine ss2(dd)
integer::dd(:,:,:,:)

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
if(is_contiguous(dd(:,:,:,::-1)) .neqv. .false.) print*,315,'dd(:,:,:,::-1)'

print*,'pass'
end subroutine
end
