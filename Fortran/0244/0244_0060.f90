if(is_contiguous(reshape([1,2,3,4,5,6],[2,3])+reshape([2,3,4,5,6,7],[2,3])) .eqv. .true.) print*,'pass'
end
