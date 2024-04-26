character,pointer::arr(:)
allocate(arr(7))
if(is_contiguous(arr)) print*,'pass'
end
