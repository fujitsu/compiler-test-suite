integer,pointer, contiguous :: ptr(:,:,:)
integer,target :: tgt(8,8,8)=2

ptr=>tgt(:,2:8,:)
end
