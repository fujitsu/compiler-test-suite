integer,contiguous,pointer::arr(:,:,:,:,:)
integer :: i=1, j=7
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
integer::dmy(:,:,:,:,:)
if(is_contiguous(dmy) .neqv. .true.) print*,201,'dmy' 
if(is_contiguous(dmy(:,:,:,:,:)) .neqv. .true.) print*,202,'dmy(:,:,:,:,:)' 
if(is_contiguous(dmy(2:,:,:,:,:)) .neqv. .false.) print*,203,'dmy(2:,:,:,:,:)' 
if(is_contiguous(dmy(2,:,:,:,:)) .neqv. .false.) print*,204,'dmy(2,:,:,:,:)' 
if(is_contiguous(dmy(:,:,:,:,2)) .neqv. .true.) print*,205,'dmy(:,:,:,:,2)' 
if(is_contiguous(dmy(:,:,:,:,2:)) .neqv. .true.) print*,206,'dmy(:,:,:,:,2:)' 
if(is_contiguous(dmy(:,2:,:,:,:)) .neqv. .false.) print*,207,'dmy(:,2:,:,:,:)' 
if(is_contiguous(dmy(:,2,:,:,:)) .neqv. .false.) print*,208,'dmy(:,2,:,:,:)' 

if(is_contiguous(dmy(:,[1,2,3,4,5,6,7],:,:,:)) .neqv. .false.) print*,209,'dmy(:,[1,2,3,4,5,6,7],:,:,:)' 
if(is_contiguous(dmy(:,i:j:i,i:j,1:7,:)) .neqv. .true.) print*,210,'dmy(:,i:j:i,i:j,1:7,:)' 
if(is_contiguous(dmy(1:j,i:j,i:j,i:j,i:j)) .neqv. .true.) print*,211,'dmy(i:j,i:j,i:j,i:j,i:j)' 
if(is_contiguous(dmy(i+1-1:j+1-1,1:j+j-j,:,:,:)) .neqv. .true.) print*,212,'dmy(:,exp,:,:,:)' 

if(is_contiguous(dmy(:,:,:,:,2:))) then
 print*,'pass'
else
 print*,101
endif
end subroutine
end
