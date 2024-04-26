class(*),pointer::aptr2(:,:,:,:)
integer,target :: trg(-10:-2,-10:-3,-10:-3,-10:0)=9
integer::i=1,j=2
aptr2=>trg

if(is_contiguous(trg) .neqv. .true.) print*,101,'trg'
if(is_contiguous(trg(:,:,:,:)) .neqv. .true.) print*,102,'trg(:,:,:,:)'
if(is_contiguous(trg(-2:,:,:,:)) .neqv. .false.) print*,103,'trg(2:,:,:,:)'
if(is_contiguous(trg(-2,:,:,:)) .neqv. .false.) print*,104,'trg(2,:,:,:)'
if(is_contiguous(trg(:,:,:,-2)) .neqv. .true.) print*,105,'trg(:,:,:,2)'
if(is_contiguous(trg(:,:,:,-2:)) .neqv. .true.) print*,106,'trg(:,:,:,2:)'
if(is_contiguous(trg(:,-4:,:,:)) .neqv. .false.) print*,107,'trg(:,2:,:,:)'
if(is_contiguous(trg(:,-4,:,:)) .neqv. .false.) print*,108,'trg(:,2,:,:)'
if(is_contiguous(trg(:,i*(-4),:,:)) .neqv. .false.) print*,109,'trg(:,i,:,:)'
if(is_contiguous(trg(:,:,:,:-2)) .neqv. .true.) print*,110,'trg(:,:,:,:2)'
if(is_contiguous(trg(:,:,:,::2)) .neqv. .false.) print*,111,'trg(:,:,:,::2)'
if(is_contiguous(trg(:,:,-10:-3,:)) .neqv. .true.) print*,112,'trg(:,:,1:10,:)'
if(is_contiguous(trg(:,:,:,::i)) .neqv. .true.) print*,113,'trg(:,:,:,::i)'
if(is_contiguous(trg(:,:,:,::j)) .neqv. .false.) print*,114,'trg(:,:,:,::j)'

if(is_contiguous(aptr2) .neqv. .true.) print*,501,'aptr2'
if(is_contiguous(aptr2(:,:,:,:)) .neqv. .true.) print*,502,'aptr2(:,:,:,:)'
if(is_contiguous(aptr2(-3:,:,:,:)) .neqv. .false.) print*,503,'aptr2(2:,:,:,:)'
if(is_contiguous(aptr2(-3,:,:,:)) .neqv. .false.) print*,504,'aptr2(2,:,:,:)'
if(is_contiguous(aptr2(:,:,:,-2)) .neqv. .true.) print*,505,'aptr2(:,:,:,2)'
if(is_contiguous(aptr2(:,:,:,-2:)) .neqv. .true.) print*,506,'aptr2(:,:,:,2:)'
if(is_contiguous(aptr2(:,-4:,:,:)) .neqv. .false.) print*,507,'aptr2(:,2:,:,:)'
if(is_contiguous(aptr2(:,-4,:,:)) .neqv. .false.) print*,508,'aptr2(:,2,:,:)'
if(is_contiguous(aptr2(:,i-4,:,:)) .neqv. .false.) print*,509,'aptr2(:,i,:,:)'
if(is_contiguous(aptr2(:,:,:,:-2)) .neqv. .true.) print*,510,'aptr2(:,:,:,:2)'
if(is_contiguous(aptr2(:,:,:,::2)) .neqv. .false.) print*,511,'aptr2(:,:,:,::2)'
if(is_contiguous(aptr2(:,:,-10:-3,:)) .neqv. .true.) print*,512,'aptr2(:,:,1:10,:)'
if(is_contiguous(aptr2(:,:,:,::i)) .neqv. .true.) print*,513,'aptr2(:,:,:,::i)'
if(is_contiguous(aptr2(:,:,:,::j)) .neqv. .false.) print*,514,'aptr2(:,:,:,::j)'
if(is_contiguous(aptr2(:,:,:,[-1,-2,-3])) .neqv. .false.) print*,515,'aptr2(:,:,:,[-1,-2,-3])'
if(is_contiguous(aptr2((i*j*5*(-1)):-2,((i+j+j)*2*(-1)):,-10:-3,:(j-i)-i)) .neqv. .true.) print*,516,'aptr2(expr)'

call sub(trg(:,:,:,:))

contains
subroutine sub(dptr)
class(*),contiguous::dptr(1:,1:,1:,1:)
 
if(is_contiguous(dptr) .neqv. .true.) print*,201,'dptr'
if(is_contiguous(dptr(:,:,:,:)) .neqv. .true.) print*,202,'dptr(:,:,:,:)'
if(is_contiguous(dptr(2:,:,:,:)) .neqv. .false.) print*,203,'dptr(2:,:,:,:)'
if(is_contiguous(dptr(1,:,:,:)) .neqv. .false.) print*,204,'dptr(2,:,:,:)'
if(is_contiguous(dptr(:,:,:,1)) .neqv. .true.) print*,205,'dptr(:,:,:,2)'
if(is_contiguous(dptr(:,:,:,1:)) .neqv. .true.) print*,206,'dptr(:,:,:,2:)'
if(is_contiguous(dptr(:,2:,:,:)) .neqv. .false.) print*,207,'dptr(:,2:,:,:)'
if(is_contiguous(dptr(:,1,:,:)) .neqv. .false.) print*,208,'dptr(:,2,:,:)'
if(is_contiguous(dptr(:,:,:,:1)) .neqv. .true.) print*,210,'dptr(:,:,:,:2)'
if(is_contiguous(dptr(:,:,:,::2)) .neqv. .false.) print*,211,'dptr(:,:,:,::2)'
if(is_contiguous(dptr(:,:,1:3,:)) .neqv. .false.) print*,212,'dptr(:,:,1:10,:)'
if(is_contiguous(dptr(:,:,:,::i)) .neqv. .true.) print*,213,'dptr(:,:,:,::i)'
if(is_contiguous(dptr(:,:,:,::j)) .neqv. .false.) print*,214,'dptr(:,:,:,::j)'
print*,'pass'
end subroutine

end
