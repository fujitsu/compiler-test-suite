character(len=3)::arr(3,4,5)='abc'

if(is_contiguous(arr(:,:,3)(:))) print*,'pass'
end
