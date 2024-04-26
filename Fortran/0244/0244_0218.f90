integer,allocatable,target :: trg(:,:,:,:,:,:,:)
integer,pointer :: ptr(:,:,:,:,:,:,:)

allocate(trg(10,8,8,8,8,8,8))
trg = 3

ptr=>trg
if(is_contiguous(ptr(:,1:8:1,:,:,:,:,4)))  print*,'pass'

end
