type t1
 integer,pointer::aptr(:,:,:,:)
end type

type tt1
 type(t1) :: cmp
end type

type(tt1) :: obj
integer,target :: trg(10,10,10,10)=22
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
call sub(obj%cmp%aptr)

contains
subroutine sub(dptr)
integer,target::dptr(:,:,:,:)

type y1
 integer,pointer::dd(:,:,:,:)
end type

type y2
 type(y1),pointer :: cmp
end type

type y3
 type(y2) :: cmp2
end type

type(y3) :: obj

allocate(obj%cmp2%cmp)

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

obj%cmp2%cmp%dd=>dptr(:,:,1:5,:)

if(is_contiguous(obj%cmp2%cmp%dd) .neqv. .false.) print*,301,'obj%cmp2%cmp%dd'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,:)) .neqv. .false.) print*,302,'obj%cmp2%cmp%dd(:,:,:,:)'
if(is_contiguous(obj%cmp2%cmp%dd(2:,:,:,:)) .neqv. .false.) print*,303,'obj%cmp2%cmp%dd(2:,:,:,:)'
if(is_contiguous(obj%cmp2%cmp%dd(2,:,:,:)) .neqv. .false.) print*,304,'obj%cmp2%cmp%dd(2,:,:,:)'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,2)) .neqv. .true.) print*,305,'obj%cmp2%cmp%dd(:,:,:,2)'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,2:)) .neqv. .false.) print*,306,'obj%cmp2%cmp%dd(:,:,:,2:)'
if(is_contiguous(obj%cmp2%cmp%dd(:,2:,:,:)) .neqv. .false.) print*,307,'obj%cmp2%cmp%dd(:,2:,:,:)'
if(is_contiguous(obj%cmp2%cmp%dd(:,2,:,:)) .neqv. .false.) print*,308,'obj%cmp2%cmp%dd(:,2,:,:)'
if(is_contiguous(obj%cmp2%cmp%dd(:,i,:,:)) .neqv. .false.) print*,309,'obj%cmp2%cmp%dd(:,i,:,:)'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,:2)) .neqv. .false.) print*,310,'obj%cmp2%cmp%dd(:,:,:,:2)'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,::2)) .neqv. .false.) print*,311,'obj%cmp2%cmp%dd(:,:,:,::2)'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,::i)) .neqv. .false.) print*,312,'obj%cmp2%cmp%dd(:,:,:,::i)'
if(is_contiguous(obj%cmp2%cmp%dd(:,:,:,::j)) .neqv. .false.) print*,313,'obj%cmp2%cmp%dd(:,:,:,::j)'

print*,'pass'
end subroutine
end
