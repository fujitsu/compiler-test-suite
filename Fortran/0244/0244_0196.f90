integer,pointer::arr(:,:)
integer,target::tgt(7,8) = 23

arr=>tgt

if(is_contiguous(tgt) .and. is_contiguous(arr)) print*,'pass'
if(is_contiguous(tgt(:,::2))) print*,101
if(is_contiguous(arr(:,::2))) print*,102
if(is_contiguous(tgt(:,::2))) print*,103
if(is_contiguous(arr(:,::2))) print*,104
if(is_contiguous(tgt(:,[2,3,4]))) print*,105
if(is_contiguous(arr(:,[2,3,4]))) print*,106
if(is_contiguous(tgt(:,[2,3,4])) .or. is_contiguous(arr(:,[2,3,4]))) print*,107
end
