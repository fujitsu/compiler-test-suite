character(kind=4),pointer::aptr(:,:,:,:)
character(kind=4),target :: trg(10,10,10,10)=4_'a'
integer::i=1,j=2
aptr=>trg(:,:,:,2:6)

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
if(is_contiguous(trg(1:10,1:10,1:10,1:10)) .neqv. .true.) print*,115,'trg(1:10,1:10,1:10,1:10)'
if(is_contiguous(trg(1:10,1:5,1:10,1:10)) .neqv. .false.) print*,116,'trg(1:10,1:5,1:10,1:10)'
if(is_contiguous(trg(1:10,1:10:2,1:10,1:10)) .neqv. .false.) print*,117,'trg(1:10,1:10:2,1:10,1:10)'
if(is_contiguous(trg(1:10,1:10,1:10,1:10:2)) .neqv. .false.) print*,118,'trg(1:10,1:10,1:10,1:10:2)'

if(is_contiguous(aptr) .neqv. .true.) print*,119,'aptr'
if(is_contiguous(aptr(:,:,:,:)) .neqv. .true.) print*,120,'aptr(:,:,:,:)'
if(is_contiguous(aptr(2:,:,:,:)) .neqv. .false.) print*,121,'aptr(2:,:,:,:)'
if(is_contiguous(aptr(2,:,:,:)) .neqv. .false.) print*,122,'aptr(2,:,:,:)'
if(is_contiguous(aptr(:,:,:,2)) .neqv. .true.) print*,123,'aptr(:,:,:,2)'
if(is_contiguous(aptr(:,:,:,2:)) .neqv. .true.) print*,124,'aptr(:,:,:,2:)'
if(is_contiguous(aptr(:,2:,:,:)) .neqv. .false.) print*,125,'aptr(:,2:,:,:)'
if(is_contiguous(aptr(:,2,:,:)) .neqv. .false.) print*,126,'aptr(:,2,:,:)'
if(is_contiguous(aptr(:,i,:,:)) .neqv. .false.) print*,127,'aptr(:,i,:,:)'
if(is_contiguous(aptr(:,:,:,:2)) .neqv. .true.) print*,128,'aptr(:,:,:,:2)'
if(is_contiguous(aptr(:,:,:,::2)) .neqv. .false.) print*,129,'aptr(:,:,:,::2)'
if(is_contiguous(aptr(:,:,1:10,:)) .neqv. .true.) print*,130,'aptr(:,:,1:10,:)'
if(is_contiguous(aptr(:,:,:,::i)) .neqv. .true.) print*,131,'aptr(:,:,:,::i)'
if(is_contiguous(aptr(:,:,:,::j)) .neqv. .false.) print*,132,'aptr(:,:,:,::j)'
if(is_contiguous(aptr(1:10,1:10,1:10,1:5)) .neqv. .true.) print*,133,'aptr(1:10,1:10,1:10,1:5)'
if(is_contiguous(aptr(1:10,1:5,1:10,1:5)) .neqv. .false.) print*,134,'aptr(1:10,1:5,1:10,1:5)'
if(is_contiguous(aptr(1:10,1:10:2,1:10,1:10)) .neqv. .false.) print*,135,'aptr(1:10,1:10:2,1:10,1:10)'
if(is_contiguous(aptr(1:10,1:10,1:10,1:5:2)) .neqv. .false.) print*,136,'aptr(1:10,1:10,1:10,1:5:2)'
call sub(trg(:,:,:,2:6))

contains
subroutine sub(dptr)
character(kind=4),contiguous::dptr(:,:,:,:)

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
if(is_contiguous(dptr(1:10,1:10,1:10,1:5)) .neqv. .true.) print*,215,'dptr(1:10,1:10,1:10,1:5)'
if(is_contiguous(dptr(1:10,1:5,1:10,1:5)) .neqv. .false.) print*,216,'dptr(1:10,1:5,1:10,1:5)'
if(is_contiguous(dptr(1:10,1:10:2,1:10,1:5)) .neqv. .false.) print*,217,'dptr(1:10,1:10:2,1:10,1:5)'
if(is_contiguous(dptr(1:10,1:10,1:10,1:5:2)) .neqv. .false.) print*,218,'dptr(1:10,1:10,1:10,1:5:2)'
call sub2(dptr(:,:,1:5,:))
end subroutine

subroutine sub2(dd)
character(kind=4)::dd(:,:,:,:)
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
if(is_contiguous(dd(:,:,1:5,:)) .neqv. .false.) print*,314,'dd(:,:,1:5,:)'
if(is_contiguous(dd(1:10,1:10,1:5,1:5)) .neqv. .false.) print*,315,'dd(1:10,1:10,1:5,1:5)'
if(is_contiguous(dd(1:10,1:5,1:5,1:5)) .neqv. .false.) print*,316,'dd(1:10,1:5,1:5,1:5)'
if(is_contiguous(dd(1:10,1:10:2,1:5,1:5)) .neqv. .false.) print*,317,'dd(1:10,1:10:2,1:5,1:5)'
if(is_contiguous(dd(1:10,1:10,1:5,1:5:2)) .neqv. .false.) print*,318,'dd(1:10,1:10,1:5,1:5:2)'

print*,'pass'
end subroutine
end
