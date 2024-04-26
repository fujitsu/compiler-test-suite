integer,pointer :: ptr(:,:,:,:)
integer,target :: trg(10,8,8,8)

trg = 3
ptr=>trg

if(is_contiguous(ptr(:,:,:,1:8))) print*,'pass1/2'
if(is_contiguous(ptr(:,:,:,2:8))) print*,'pass2/2'
if(is_contiguous(ptr(:,:,2:8,:))) print*,'101'
if(is_contiguous(ptr(:,:,2,:))) print*,'102'
end
