integer,pointer::arr(:,:)
integer::i=3,j=4,k=7
allocate(arr(7,6))
arr=2
if(is_contiguous(arr(:i+j,j-2:i+2))) print*,'pass'
if(is_contiguous(arr(j-i:k,:)) .neqv. .true.) print*,101
end
