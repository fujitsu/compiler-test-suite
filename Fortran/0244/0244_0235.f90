character,pointer :: ptr(:,:,:,:)
character,target :: trg(10,1:8,8,8)

trg = 'y'
ptr=>trg 

if(is_contiguous(ptr(:,1:8,:,1:8))) print*,'pass'
if(is_contiguous(ptr(:,:,:,2:8)) .neqv. .true.) print*,'105'
if(is_contiguous(trg(:,1:8,:,1:8)) .neqv. .true.) print*,'106'
if(is_contiguous(trg(:,:,:,2:8)) .neqv. .true.) print*,'107'
if(is_contiguous(ptr(:,:,2:8,:)) .neqv. .false.) print*,'101'
if(is_contiguous(ptr(:,:,2,:)) .neqv. .false.) print*,'102'
if(is_contiguous(ptr(:,2:4,:,:)) .neqv. .false.) print*,'103'
if(is_contiguous(trg(:,2:4,:,:)) .neqv. .false.) print*,'104'
end
