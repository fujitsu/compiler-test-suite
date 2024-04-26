integer,contiguous,pointer::arr(:,:,:,:,:)
allocate(arr(7,7,7,7,7))

arr=2

if(is_contiguous(arr) .neqv. .true.) print*,101,'arr' 
if(is_contiguous(arr(:,:,:,:,:)) .neqv. .true.) print*,102,'arr(:,:,:,:,:)' 
if(is_contiguous(arr(2:,:,:,:,:)) .neqv. .false.) print*,103,'arr(2:,:,:,:,:)' 
if(is_contiguous(arr(2,:,:,:,:)) .neqv. .false.) print*,104,'arr(2,:,:,:,:)' 
if(is_contiguous(arr(:,:,:,:,2)) .neqv. .true.) print*,105,'arr(:,:,:,:,2)' 
if(is_contiguous(arr(:,:,:,:,2:)) .neqv. .true.) print*,106,'arr(:,:,:,:,2:)' 
if(is_contiguous(arr(:,2:,:,:,:)) .neqv. .false.) print*,107,'arr(:,2:,:,:,:)' 
if(is_contiguous(arr(:,2,:,:,:)) .neqv. .false.) print*,108,'arr(:,2,:,:,:)' 
call sub(arr)
contains
subroutine sub(dmy)
integer,contiguous::dmy(:,:,:,:,:)
if(is_contiguous(dmy) .neqv. .true.) print*,201,'dmy' 
if(is_contiguous(dmy(:,:,:,:,:)) .neqv. .true.) print*,202,'dmy(:,:,:,:,:)' 
if(is_contiguous(dmy(2:,:,:,:,:)) .neqv. .false.) print*,203,'dmy(2:,:,:,:,:)' 
if(is_contiguous(dmy(2,:,:,:,:)) .neqv. .false.) print*,204,'dmy(2,:,:,:,:)' 
if(is_contiguous(dmy(:,:,:,:,2)) .neqv. .true.) print*,205,'dmy(:,:,:,:,2)' 
if(is_contiguous(dmy(:,:,:,:,2:)) .neqv. .true.) print*,206,'dmy(:,:,:,:,2:)' 
if(is_contiguous(dmy(:,2:,:,:,:)) .neqv. .false.) print*,207,'dmy(:,2:,:,:,:)' 
if(is_contiguous(dmy(:,2,:,:,:)) .neqv. .false.) print*,208,'dmy(:,2,:,:,:)' 
if(is_contiguous(dmy(:,:,:,:,2:))) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
