type tt
  integer,pointer::aptr(:,:,:,:)
end type

integer,target :: trg(10,10,10,10)=9
integer::i=1,j=2

type(tt) :: obj

obj%aptr=>trg(:,:,:,2:6)

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
call sub(trg(:,:,:,2:6))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:,:)

type tt2
 integer,pointer::dd(:,:,:,:)
end type

type(tt2) :: obj2

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

obj2%dd=>dptr(:,:,1:5,:)

if(is_contiguous(obj2%dd) .neqv. .false.) print*,301,'obj2%dd'
if(is_contiguous(obj2%dd(:,:,:,:)) .neqv. .false.) print*,302,'obj2%dd(:,:,:,:)'
if(is_contiguous(obj2%dd(2:,:,:,:)) .neqv. .false.) print*,303,'obj2%dd(2:,:,:,:)'
if(is_contiguous(obj2%dd(2,:,:,:)) .neqv. .false.) print*,304,'obj2%dd(2,:,:,:)'
if(is_contiguous(obj2%dd(:,:,:,2)) .neqv. .true.) print*,305,'obj2%dd(:,:,:,2)'
if(is_contiguous(obj2%dd(:,:,:,2:)) .neqv. .false.) print*,306,'obj2%dd(:,:,:,2:)'
if(is_contiguous(obj2%dd(:,2:,:,:)) .neqv. .false.) print*,307,'obj2%dd(:,2:,:,:)'
if(is_contiguous(obj2%dd(:,2,:,:)) .neqv. .false.) print*,308,'obj2%dd(:,2,:,:)'
if(is_contiguous(obj2%dd(:,i,:,:)) .neqv. .false.) print*,309,'obj2%dd(:,i,:,:)'
if(is_contiguous(obj2%dd(:,:,:,:2)) .neqv. .false.) print*,310,'obj2%dd(:,:,:,:2)'
if(is_contiguous(obj2%dd(:,:,:,::2)) .neqv. .false.) print*,311,'obj2%dd(:,:,:,::2)'
if(is_contiguous(obj2%dd(:,:,:,::i)) .neqv. .false.) print*,312,'obj2%dd(:,:,:,::i)'
if(is_contiguous(obj2%dd(:,:,:,::j)) .neqv. .false.) print*,313,'obj2%dd(:,:,:,::j)'

print*,'pass'
end subroutine
end
