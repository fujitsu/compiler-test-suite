type ty
 integer :: ig=23
end type

type,extends(ty) :: ty2
 integer :: ig2 = 24
end type

type,extends(ty2) :: ty3
 integer :: ig33
end type

class(ty),pointer::aptr(:,:,:,:)
type(ty3),target :: trg(10,10,10,10)
integer::i=1,j=2
aptr=>trg(:,:,2:6,:)

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
if(is_contiguous(trg(:,:,1:10,:)) .neqv. .true.) print*,1111,'trg(:,:,1:10,:)'
if(is_contiguous(trg(:,:,:,::i)) .neqv. .true.) print*,112,'trg(:,:,:,::i)'
if(is_contiguous(trg(:,:,:,::j)) .neqv. .false.) print*,113,'trg(:,:,:,::j)'

if(is_contiguous(aptr) .neqv. .false.) print*,114,'aptr'
if(is_contiguous(aptr(:,:,:,:)) .neqv. .false.) print*,115,'aptr(:,:,:,:)'
if(is_contiguous(aptr(2:,:,:,:)) .neqv. .false.) print*,116,'aptr(2:,:,:,:)'
if(is_contiguous(aptr(2,:,:,:)) .neqv. .false.) print*,117,'aptr(2,:,:,:)'
if(is_contiguous(aptr(:,:,:,2)) .neqv. .true.) print*,118,'aptr(:,:,:,2)'
if(is_contiguous(aptr(:,:,:,2:)) .neqv. .false.) print*,119,'aptr(:,:,:,2:)'
if(is_contiguous(aptr(:,2:,:,:)) .neqv. .false.) print*,120,'aptr(:,2:,:,:)'
if(is_contiguous(aptr(:,2,:,:)) .neqv. .false.) print*,121,'aptr(:,2,:,:)'
if(is_contiguous(aptr(:,i,:,:)) .neqv. .false.) print*,122,'aptr(:,i,:,:)'
if(is_contiguous(aptr(:,:,:,:2)) .neqv. .false.) print*,123,'aptr(:,:,:,:2)'
if(is_contiguous(aptr(:,:,:,::2)) .neqv. .false.) print*,124,'aptr(:,:,:,::2)'
if(is_contiguous(aptr(:,:,1:5,:)) .neqv. .false.) print*,125,'aptr(:,:,1:10,:)'
if(is_contiguous(aptr(:,:,:,::i)) .neqv. .false.) print*,126,'aptr(:,:,:,::i)'
if(is_contiguous(aptr(:,:,:,::j)) .neqv. .false.) print*,127,'aptr(:,:,:,::j)'
call sub(trg(:,:,:,:))

contains
subroutine sub(dptr)
class(ty),contiguous::dptr(:,:,:,:)
 
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

call ss2(dptr(:,:,1:5,:))

end subroutine

subroutine ss2(dd)
class(ty)::dd(:,:,:,:)

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
