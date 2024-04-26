integer,allocatable,target :: trg(:,:,:,:,:)
integer,pointer::ptr(:,:,:,:,:)

allocate(trg(10,8,8,8,8))
trg = 3

ptr=>trg
if(is_contiguous(ptr(:,1:8,:,:,:))) print*,'pass'
if(is_contiguous(ptr(:,2:8,:,:,:))) print*,101

end
