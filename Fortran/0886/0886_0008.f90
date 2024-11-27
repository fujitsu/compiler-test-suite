integer,pointer :: ptr(:,:,:)
contiguous :: ptr
integer,target :: tgt(8,8,8)=2

ptr=>tgt(1:2,:,:)
end
