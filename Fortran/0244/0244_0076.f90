integer,allocatable::arr(:,:,:)
integer::i=1
allocate(arr(3,3,3))
arr =23
if(is_contiguous(arr(:,1:3:i,:))) print*,'pass'
end
