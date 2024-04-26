character,pointer::arr(:),arr2(:)
allocate(arr(7))
arr='a'

arr2=>arr
if(is_contiguous(arr2(:)(:))) print*,'pass'
end
