integer,allocatable::arr(:)
allocate(arr(7))

arr = 5

if(is_contiguous(arr)) print*,'pass'
end
