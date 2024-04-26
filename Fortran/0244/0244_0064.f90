integer::arr(7,7,7) = 7

if(is_contiguous(arr) .neqv. .true.)print*,101,'arr ' 
if(is_contiguous(arr(:,:,:)) .neqv. .true.)print*,102,'arr(:,:,:) ' 
if(is_contiguous(arr(2:,:,:)) .neqv. .false.)print*,103,'arr(2:,:,:)'
if(is_contiguous(arr(2,:,:)) .neqv. .false.)print*,104,'arr(2,:,:) ' 
if(is_contiguous(arr(:,:,2)) .neqv. .true.)print*,105,'arr(:,:,2) ' 
if(is_contiguous(arr(:,:,2:)) .neqv. .true.)print*,106,'arr(:,:,2:) ' 
if(is_contiguous(arr(:,2:,:)) .neqv. .false.)print*,107,'arr(:,2:,:) ' 
if(is_contiguous(arr(:,2,:)) .neqv. .false.)print*,108,'arr(:,2,:) ' 
if(is_contiguous(arr(:,:,2:5))) print*,'pass'
end
