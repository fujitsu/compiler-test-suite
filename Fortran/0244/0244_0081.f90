character(len=3)::arr(7)='abc'

if(is_contiguous(arr(2:5)(:))) print*,'pass'
end
