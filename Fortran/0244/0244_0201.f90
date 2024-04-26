integer,pointer::aptr(:,:,:)
integer,target :: trg(10,10,10)=2
aptr=>trg(:,:,2:6)

if(is_contiguous(aptr) .neqv. .true.) print*,101,'aptr' 
if(is_contiguous(aptr(:,:,:)) .neqv. .true.) print*,102,'aptr(:,:,:)' 
if(is_contiguous(aptr(2:,:,:)) .neqv. .false.) print*,103,'aptr(2:,:,:)' 
if(is_contiguous(aptr(2,:,:)) .neqv. .false.) print*,104,'aptr(2,:,:)' 
if(is_contiguous(aptr(:,:,2)) .neqv. .true.) print*,105,'aptr(:,:,2)' 
if(is_contiguous(aptr(:,:,2:)) .neqv. .true.) print*,106,'aptr(:,:,2:)' 
if(is_contiguous(aptr(:,2:,:)) .neqv. .false.) print*,107,'aptr(:,2:,:)' 
if(is_contiguous(aptr(:,2,:)) .neqv. .false.) print*,108,'aptr(:,2,:)' 

call sub(trg(:,:,2:6))

contains
subroutine sub(dptr)
integer,contiguous,target::dptr(:,:,:)
integer,pointer::ptr(:,:,:)

if(is_contiguous(dptr) .neqv. .true.) print*,201,'dptr' 
if(is_contiguous(dptr(:,:,:)) .neqv. .true.) print*,202,'dptr(:,:,:)' 
if(is_contiguous(dptr(2:,:,:)) .neqv. .false.) print*,203,'dptr(2:,:,:)' 
if(is_contiguous(dptr(2,:,:)) .neqv. .false.) print*,204,'dptr(2,:,:)' 
if(is_contiguous(dptr(:,:,2)) .neqv. .true.) print*,205,'dptr(:,:,2)' 
if(is_contiguous(dptr(:,:,2:)) .neqv. .true.) print*,206,'dptr(:,:,2:)' 
if(is_contiguous(dptr(:,2:,:)) .neqv. .false.) print*,207,'dptr(:,2:,:)' 
if(is_contiguous(dptr(:,2,:)) .neqv. .false.) print*,208,'dptr(:,2,:)' 
ptr=>dptr
if(is_contiguous(ptr) .neqv. .true.) print*,209,'ptr' 
if(is_contiguous(ptr(:,:,:)) .neqv. .true.) print*,210,'ptr(:,:,:)' 
if(is_contiguous(ptr(2:,:,:)) .neqv. .false.) print*,211,'ptr(2:,:,:)' 
if(is_contiguous(ptr(2,:,:)) .neqv. .false.) print*,212,'ptr(2,:,:)' 
if(is_contiguous(ptr(:,:,2)) .neqv. .true.) print*,213,'ptr(:,:,2)' 
if(is_contiguous(ptr(:,:,2:)) .neqv. .true.) print*,214,'ptr(:,:,2:)' 
if(is_contiguous(ptr(:,2:,:)) .neqv. .false.) print*,215,'ptr(:,2:,:)' 
if(is_contiguous(ptr(:,2,:)) .neqv. .false.) print*,216,'ptr(:,2,:)' 
if(is_contiguous(ptr(:,:,3))) print*,'pass'
end subroutine
end
