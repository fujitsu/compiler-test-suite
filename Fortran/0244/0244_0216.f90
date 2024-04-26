integer,pointer::arr(:,:,:,:,:,:,:)
integer,target::tgt(7,8,7,8,7,8,7)=23
integer::i=6

arr=>tgt

if(is_contiguous(tgt(:,:,:,:,:,:,:i)) .and. is_contiguous(arr(:,:,:,:,:,:,:i))) print*,'pass'
if(is_contiguous(tgt(:,:,2:,:,:,:,:)) .or. is_contiguous(arr(:,:,2:,:,:,:,:i))) print*,101
if(is_contiguous(tgt(:,:,2,:,:,:,:)) .or. is_contiguous(arr(:,:,2,:,:,:,:i))) print*,102
end
